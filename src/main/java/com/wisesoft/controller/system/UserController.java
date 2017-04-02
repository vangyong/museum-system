package com.wisesoft.controller.system;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisesoft.annotation.SystemLog;
import com.wisesoft.controller.index.BaseController;
import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.entity.system.UserResFormMap;
import com.wisesoft.entity.system.UserRoleFormMap;
import com.wisesoft.exception.SystemException;
import com.wisesoft.mapper.system.UserMapper;
import com.wisesoft.mapper.system.UserResMapper;
import com.wisesoft.mapper.system.UserRoleMapper;
import com.wisesoft.plugin.PageView;
import com.wisesoft.util.Common;
import com.wisesoft.util.JsonUtils;
import com.wisesoft.util.POIUtils;
import com.wisesoft.util.PasswordHelper;
import com.wisesoft.util.UUIDUtil;

/**
 * 
 * @ClassName: UserController 
 * @description: 用户管理控制器
 * @author: wangyong
 * @date: 2016年6月1日 下午8:25:26
 */
@Controller
@RequestMapping("/user/")
public class UserController extends BaseController {
	@Inject
	private UserMapper userMapper;
	@Inject
	private UserRoleMapper userRoleMapper;
	@Inject
	private UserResMapper userResMapper;

	@RequestMapping("listUI")
	public String listUI(Model model) throws Exception {
		model.addAttribute("res", findByRes());
		return Common.BACKGROUND_PATH + "/system/user/list";
	}
	@ResponseBody
	@RequestMapping("findByPage")
	public PageView findByPage(String pageNow, String pageSize, String column, String sort) throws Exception {
		UserFormMap userFormMap = getFormMap(UserFormMap.class);
		userFormMap = toFormMap(userFormMap, pageNow, pageSize, userFormMap.getStr("orderby"));
		userFormMap.put("COLUMN", column);
		userFormMap.put("SORT", sort);
		pageView.setRecords(userMapper.findUserPage(userFormMap));// 不调用默认分页,调用自已的mapper中findUserPage
		return pageView;
	}
	@RequestMapping("/export")
	public void export(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String fileName = "用户列表";
		UserFormMap userFormMap = findHasHMap(UserFormMap.class);
		String exportData = userFormMap.getStr("exportData");// 列表头的json字符串
		List<Map<String, Object>> listMap = JsonUtils.parseJSONList(exportData);
		List<UserFormMap> lis = userMapper.findUserPage(userFormMap);
		POIUtils.exportToExcel(response, listMap, lis, fileName);
	}
	@RequestMapping("addUI")
	public String addUI(Model model) throws Exception {
		return Common.BACKGROUND_PATH + "/system/user/add";
	}
	@ResponseBody
	@RequestMapping("addEntity")
	@SystemLog(module = "系统管理", methods = "用户管理-新增用户")// 凡需要处理业务逻辑的.都需要记录操作日志
	@Transactional(readOnly = false)// 需要事务操作必须加入此注解
	public String addEntity(String txtGroupsSelect) {
		try {
			UserFormMap userFormMap = getFormMap(UserFormMap.class);
			userFormMap.put("txtGroupsSelect", txtGroupsSelect);
			PasswordHelper passwordHelper = new PasswordHelper();
			userFormMap.set("password", "123456789");
			passwordHelper.encryptPassword(userFormMap);
			userFormMap.set("id", UUIDUtil.create());
			userMapper.addEntity(userFormMap);// 新增后返回新增信息
			if (!Common.isEmpty(txtGroupsSelect)) {
				String[] txt = txtGroupsSelect.split(",");
				UserRoleFormMap userRoleFormMap = new UserRoleFormMap();
				for (String roleId : txt) {
					userRoleFormMap.put("userId", userFormMap.get("id"));
					userRoleFormMap.put("roleId", roleId);
					userMapper.addEntity(userRoleFormMap);
				}
			}
		} catch (Exception e) {
			throw new SystemException("添加账号异常");
		}
		return "success";
	}
	@ResponseBody
	@RequestMapping("deleteEntity")
	@Transactional(readOnly = false)// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "用户管理-删除用户")// 凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity() throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			UserRoleFormMap userRoleFormMap = new UserRoleFormMap();
			userRoleFormMap.put("userId", id);
			userRoleMapper.deleteByUserId(userRoleFormMap);
			// roleMapper.deleteByAttribute("userId", id, UserRoleFormMap.class);
			UserResFormMap userResFormMap = new UserResFormMap();
			userResFormMap.put("userId", id);
			userResMapper.deleteByUserId(userResFormMap);
			UserFormMap userFormMap = new UserFormMap();
			userFormMap.put("id", id);
			userMapper.deleteById(userFormMap);
		}
		return "success";
	}
	@RequestMapping("editUI")
	public String editUI(Model model) throws Exception {
		String id = getPara("id");
		if (Common.isNotEmpty(id)) {
			model.addAttribute("user", userMapper.findbyFrist("id", id, UserFormMap.class));
		}
		return Common.BACKGROUND_PATH + "/system/user/edit";
	}
	@ResponseBody
	@RequestMapping("editEntity")
	@Transactional(readOnly = false)// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "用户管理-修改用户")// 凡需要处理业务逻辑的.都需要记录操作日志
	public String editEntity(String txtGroupsSelect) throws Exception {
		UserFormMap userFormMap = getFormMap(UserFormMap.class);
		userFormMap.put("txtGroupsSelect", txtGroupsSelect);
		userMapper.editEntity(userFormMap);
		UserRoleFormMap oldUserRoleFormMap = new UserRoleFormMap();
		oldUserRoleFormMap.put("userId", userFormMap.get("id"));
		userRoleMapper.deleteByUserId(oldUserRoleFormMap);
		if (!Common.isEmpty(txtGroupsSelect)) {
			String[] txt = txtGroupsSelect.split(",");
			for (String roleId : txt) {
				UserRoleFormMap userRoleFormMap = new UserRoleFormMap();
				userRoleFormMap.put("userId", userFormMap.get("id"));
				userRoleFormMap.put("roleId", roleId);
				userMapper.addEntity(userRoleFormMap);
			}
		}
		return "success";
	}
	/**
	 * 验证账号是否存在
	 * @param name
	 * @return
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(String name) {
		UserFormMap account = userMapper.findbyFrist("accountName", name, UserFormMap.class);
		if (account == null) {
			return true;
		} else {
			return false;
		}
	}
	// 密码修改
	@RequestMapping("updatePassword")
	public String updatePassword(Model model) throws Exception {
		return Common.BACKGROUND_PATH + "/system/user/updatePassword";
	}
	// 保存新密码
	@RequestMapping("editPassword")
	@ResponseBody
	@Transactional(readOnly = false)// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "用户管理-修改密码")// 凡需要处理业务逻辑的.都需要记录操作日志
	public String editPassword() throws Exception {
		// 当验证都通过后，把用户信息放在session里
		UserFormMap userFormMap = getFormMap(UserFormMap.class);
		userFormMap.put("password", userFormMap.get("newpassword"));
		// 这里对修改的密码进行加密
		PasswordHelper passwordHelper = new PasswordHelper();
		passwordHelper.encryptPassword(userFormMap);
		userMapper.editEntity(userFormMap);
		return "success";
	}
}

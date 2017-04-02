package com.wisesoft.controller.system;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisesoft.annotation.SystemLog;
import com.wisesoft.controller.index.BaseController;
import com.wisesoft.entity.system.ButtonFormMap;
import com.wisesoft.entity.system.Params;
import com.wisesoft.entity.system.ResFormMap;
import com.wisesoft.entity.system.RoleResFormMap;
import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.entity.system.UserResFormMap;
import com.wisesoft.mapper.system.ResourcesMapper;
import com.wisesoft.mapper.system.RoleResMapper;
import com.wisesoft.mapper.system.UserResMapper;
import com.wisesoft.util.Common;
import com.wisesoft.util.TreeObject;
import com.wisesoft.util.TreeUtil;
import com.wisesoft.util.UUIDUtil;

/**
 * @ClassName: ResourcesController
 * @description: 资源控制器
 * @author: wangyong
 * @date: 2016年5月13日 下午10:58:45
 */
@Controller
@RequestMapping("/resources/")
public class ResourcesController extends BaseController {
	@Inject
	private ResourcesMapper resourcesMapper;
	
	@Inject
	private UserResMapper userResMapper;
	
	@Inject
	private RoleResMapper roleResMapper;

	/**
	 * @param model 存放返回界面的model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("treelists")
	public ResFormMap treelists(Model model) {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		String order = " order by level asc";
		resFormMap.put("$orderby", order);
		List<ResFormMap> mps = resourcesMapper.findByNames(resFormMap);
		List<TreeObject> list = new ArrayList<TreeObject>();
		for (ResFormMap map : mps) {
			TreeObject ts = new TreeObject();
			Common.flushObject(ts, map);
			list.add(ts);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(list, "0");
		resFormMap = new ResFormMap();
		resFormMap.put("treelists", ns);
		return resFormMap;
	}
	@ResponseBody
	@RequestMapping("reslists")
	public List<TreeObject> reslists(Model model) throws Exception {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> mps = resourcesMapper.findByWhere(resFormMap);
		List<TreeObject> list = new ArrayList<TreeObject>();
		for (ResFormMap map : mps) {
			TreeObject ts = new TreeObject();
			Common.flushObject(ts, map);
			list.add(ts);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(list, "0");
		return ns;
	}
	/**
	 * @param model 存放返回界面的model
	 * @return
	 */
	@RequestMapping("listUI")
	public String listUI(Model model) {
		model.addAttribute("res", findByRes());
		return Common.BACKGROUND_PATH + "/system/resources/list";
	}
	/**
	 * 跳转到修改界面
	 * @param model
	 * @param resourcesId 修改菜单信息ID
	 * @return
	 */
	@RequestMapping("editUI")
	public String editUI(Model model) {
		String id = getPara("id");
		if (Common.isNotEmpty(id)) {
			model.addAttribute("resources", resourcesMapper.findbyFrist("id", id, ResFormMap.class));
		}
		return Common.BACKGROUND_PATH + "/system/resources/edit";
	}
	/**
	 * 跳转到新增界面
	 * @return
	 */
	@RequestMapping("addUI")
	public String addUI(Model model) {
		return Common.BACKGROUND_PATH + "/system/resources/add";
	}
	/**
	 * @title: userPermissions
	 * @description: 用户分配权限页面
	 * @return: String
	 */
	@RequestMapping("userPermissions")
	public String userPermissions(Model model) {
		UserFormMap userFormMap = getFormMap(UserFormMap.class);
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> mps = resourcesMapper.findByWhere(resFormMap);
		List<TreeObject> list = new ArrayList<TreeObject>();
		for (ResFormMap map : mps) {
			TreeObject ts = new TreeObject();
			Common.flushObject(ts, map);
			list.add(ts);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(list, "0");
		model.addAttribute("permissions", ns);
		return Common.BACKGROUND_PATH + "/system/resources/userPermissions";
	}
	/**
	 * @title: userPermissions
	 * @description: 角色分配权限页面
	 * @return: String
	 */
	@RequestMapping("rolePermissions")
	public String rolePermissions(Model model) {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> mps = resourcesMapper.findByWhere(resFormMap);
		List<TreeObject> list = new ArrayList<TreeObject>();
		for (ResFormMap map : mps) {
			TreeObject ts = new TreeObject();
			Common.flushObject(ts, map);
			list.add(ts);
		}
		TreeUtil treeUtil = new TreeUtil();
		List<TreeObject> ns = treeUtil.getChildTreeObjects(list, "0");
		model.addAttribute("permissions", ns);
		return Common.BACKGROUND_PATH + "/system/resources/rolePermissions";
	}
	/**
	 * @title: addEntity
	 * @description: 添加资源
	 * @return: String
	 */
	@RequestMapping("addEntity")
	@ResponseBody
	@Transactional(readOnly = false)
	// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "资源管理-新增资源")
	// 凡需要处理业务逻辑的.都需要记录操作日志
	public String addEntity() throws Exception {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		if ("2".equals(resFormMap.get("type"))) {
			resFormMap.put("description", Common.htmltoString(resFormMap.get("description") + ""));
		}
		Object o = resFormMap.get("ishide");
		if (null == o) {
			resFormMap.set("ishide", "0");
		}
		resFormMap.set("id", UUIDUtil.create());
		resourcesMapper.addEntity(resFormMap);
		return "success";
	}
	/**
	 * @title: editEntity
	 * @description: 更新资源
	 * @return: String
	 */
	@ResponseBody
	@RequestMapping("editEntity")
	@Transactional(readOnly = false)
	// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "资源管理-修改资源")
	// 凡需要处理业务逻辑的.都需要记录操作日志
	public String editEntity(Model model) throws Exception {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		if ("2".equals(resFormMap.get("type"))) {
			resFormMap.put("description", Common.htmltoString(resFormMap.get("description") + ""));
		}
		Object o = resFormMap.get("ishide");
		if (null == o) {
			resFormMap.set("ishide", "0");
		}
		resourcesMapper.editEntity(resFormMap);
		return "success";
	}
	/**
	 * @title: deleteEntity
	 * @description: 根据ID删除菜单
	 * @param model
	 * @param ids
	 * @return: String
	 */
	@ResponseBody
	@RequestMapping("deleteEntity")
	@SystemLog(module = "系统管理", methods = "资源管理-删除资源")
	// 凡需要处理业务逻辑的.都需要记录操作日志
	public String deleteEntity(Model model) throws Exception {
		String[] ids = getParaValues("ids");
		for (String id : ids) {
			ResFormMap resFormMap = new ResFormMap();
			resFormMap.put("id", id);
			resourcesMapper.deleteEntity(resFormMap);
		}
		return "success";
	}
	@RequestMapping("sortUpdate")
	@ResponseBody
	@Transactional(readOnly = false)
	// 需要事务操作必须加入此注解
	public String sortUpdate(Params params) throws Exception {
		List<String> ids = params.getId();
		List<String> es = params.getRowId();
		List<ResFormMap> maps = new ArrayList<ResFormMap>();
		for (int i = 0; i < ids.size(); i++) {
			ResFormMap map = new ResFormMap();
			map.put("id", ids.get(i));
			map.put("level", es.get(i));
			maps.add(map);
		}
		resourcesMapper.updateSortOrder(maps);
		return "success";
	}
	/**
	 * @title: findUserRes
	 * @description: 根据用户Id查询资源
	 * @return: List<ResFormMap>
	 */
	@ResponseBody
	@RequestMapping("findUserRes")
	public List<ResFormMap> findUserRes() {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> rs = resourcesMapper.findUserRes(resFormMap);
		return rs;
	}
	/**
	 * @title: findRoleRes
	 * @description: 根据角色Id查询资源
	 * @return: List<ResFormMap>
	 */
	@ResponseBody
	@RequestMapping("findRoleRes")
	public List<ResFormMap> findRoleRes() {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> rs = resourcesMapper.findRoleRes(resFormMap);
		return rs;
	}
	/**
	 * @title: addResUser
	 * @description: 为用户Id增加资源
	 * @return: String
	 */
	@ResponseBody
	@RequestMapping("addUserRes")
	@Transactional(readOnly = false)
	// 需要事务操作必须加入此注解
	@SystemLog(module = "系统管理", methods = "资源管理-用户授权")
	// 凡需要处理业务逻辑的.都需要记录操作日志
	public String addUserRes() throws Exception {
		String userId = getPara("userId");
		UserResFormMap oldUserResFormMap = new UserResFormMap();
		oldUserResFormMap.put("userId", userId);
		userResMapper.deleteByUserId(oldUserResFormMap);
		//userResMapper.deleteEntity(oldUserResFormMap);
		String[] s = getParaValues("resId[]");
		List<UserResFormMap> userResFormMaps = new ArrayList<UserResFormMap>();
		for (String rid : s) {
			UserResFormMap userResFormMap = new UserResFormMap();
			userResFormMap.put("resId", rid);
			userResFormMap.put("userId", userId);
			userResFormMaps.add(userResFormMap);
		}
		userResMapper.batchSave(userResFormMaps);
		return "success";
	}
	/**
	 * @title: addResRole
	 * @description: 为角色Id增加资源
	 * @return: String
	 */
	@ResponseBody
	@RequestMapping("addRoleRes")
	@Transactional(readOnly = false)
	@SystemLog(module = "系统管理", methods = "资源管理-角色授权")
	public String addRoleRes() throws Exception {
		String roleId = getPara("roleId");
		RoleResFormMap oldRoleResFormMap = new RoleResFormMap();
		oldRoleResFormMap.put("roleId", roleId);
		roleResMapper.deleteEntity(oldRoleResFormMap);
		String[] s = getParaValues("resId[]");
		List<RoleResFormMap> roleResFormMaps = new ArrayList<RoleResFormMap>();
		for (String rid : s) {
			RoleResFormMap roleResFormMap = new RoleResFormMap();
			roleResFormMap.put("resId", rid);
			roleResFormMap.put("roleId", roleId);
			roleResFormMaps.add(roleResFormMap);
		}
		roleResMapper.batchSave(roleResFormMaps);
		return "success";
	}
	/**
	 * @title: findByButtom
	 * @description: 查询按钮
	 * @return: List<ButtonFormMap>
	 */
	@ResponseBody
	@RequestMapping("findByButtom")
	public List<ButtonFormMap> findByButtom() {
		return resourcesMapper.findByWhere(new ButtonFormMap());
	}
	/**
	 * @title: isExist
	 * @description: 验证资源是否存在
	 * @param name
	 * @param resKey
	 * @return: boolean
	 */
	@RequestMapping("isExist")
	@ResponseBody
	public boolean isExist(String name, String resKey) {
		ResFormMap resFormMap = getFormMap(ResFormMap.class);
		List<ResFormMap> r = resourcesMapper.findByNames(resFormMap);
		if (r.size() == 0) {
			return true;
		} else {
			return false;
		}
	}
}

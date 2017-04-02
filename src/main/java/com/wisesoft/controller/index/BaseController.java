package com.wisesoft.controller.index;

import java.util.Enumeration;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.wisesoft.entity.system.ResFormMap;
import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.entity.system.UserRoleFormMap;
import com.wisesoft.mapper.system.ResourcesMapper;
import com.wisesoft.plugin.PageView;
import com.wisesoft.util.Common;
import com.wisesoft.util.FormMap;

/**
 * @ClassName: BaseController
 * @description: TODO
 * @author: wangyong
 * @date: 2016年3月29日 下午7:20:16
 */
public class BaseController {
	@Inject
	private ResourcesMapper resourcesMapper;
	public PageView pageView = null;

	public PageView getPageView(String pageNow, String pageSize, String orderby) {
		if (Common.isEmpty(pageNow)) {
			pageView = new PageView(1);
		} else {
			pageView = new PageView(Integer.parseInt(pageNow));
		}
		if (Common.isEmpty(pageSize)) {
			pageSize = "10";
		}
		pageView.setPageSize(Integer.parseInt(pageSize));
		pageView.setOrderby(orderby);
		return pageView;
	}
	public <T> T toFormMap(T t, String pageNow, String pageSize, String orderby) {
		@SuppressWarnings("unchecked")
		FormMap<String, Object> formMap = (FormMap<String, Object>) t;
		formMap.put("paging", getPageView(pageNow, pageSize, orderby));
		return t;
	}
	/**
	 * @title: findByRes
	 * @description: 获取某一页面的按扭组
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findByRes() {
		// 资源ID
		String id = getPara("ID");
		// 获取request
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		// 通过工具类获取当前登录的bean
		UserFormMap userFormMap = (UserFormMap) Common.findUserSession(request);
		// user id
		String userId = userFormMap.getStr("ID");
		UserRoleFormMap userRoleFormMap = new UserRoleFormMap();
		userRoleFormMap.put("PARENTID", id);
		userRoleFormMap.put("USERID", userId);
		List<ResFormMap> rse = resourcesMapper.findUserRoleRes(userRoleFormMap);
		for (ResFormMap resFormMap : rse) {
			Object o = resFormMap.get("DESCRIPTION");
			if (o != null && !Common.isEmpty(o.toString())) {
				resFormMap.put("DESCRIPTION", Common.stringtohtml(o.toString()));
			}
		}
		return rse;
	}
	/**
	 * @title: getPara
	 * @description: 获取页面传递的某一个参数值
	 * @return: String
	 */
	public String getPara(String key) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request.getParameter(key);
	}
	/**
	 * @title: getParaValues
	 * @description: 获取页面传递的某一个数组值
	 * @return: String[]
	 */
	public String[] getParaValues(String key) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		return request.getParameterValues(key);
	}
	/*
	 * @ModelAttribute 这个注解作用.每执行controllor前都会先执行这个方法
	 * @author wangyong Email：vangyong@126.com date：2015-4-05
	 * @param request
	 * @throws Exception
	 * @throws
	 */
	/*
	 * @ModelAttribute public void init(HttpServletRequest request){ String path =
	 * Common.BACKGROUND_PATH; Object ep = request.getSession().getAttribute("basePath");
	 * if(ep!=null){ if(!path.endsWith(ep.toString())){ Common.BACKGROUND_PATH =
	 * "/WEB-INF/jsp/background"+ep; } } }
	 */
	/**
	 * @title: getFormMap
	 * @description: 获取传递的所有参数, 反射实例化对象，再设置属性值 通过泛型回传对象
	 * @return: T
	 */
	public <T> T getFormMap(Class<T> clazz) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		Enumeration<String> en = request.getParameterNames();
		T t = null;
		try {
			t = clazz.newInstance();
			@SuppressWarnings("unchecked")
			FormMap<String, Object> map = (FormMap<String, Object>) t;
			String order = "", sort = "";
			while (en.hasMoreElements()) {
				String nms = en.nextElement().toString();
				if (nms.endsWith("[]")) {
					String[] as = request.getParameterValues(nms);
					if (as != null && as.length != 0 && as.toString() != "[]") {
						String mname = t.getClass().getSimpleName().toUpperCase();
						if (nms.toUpperCase().startsWith(mname)) {
							nms = nms.substring(nms.toUpperCase().indexOf(mname) + 1);
							map.put(nms, as);
						}
					}
				} else {
					String as = request.getParameter(nms);
					if (!Common.isEmpty(as)) {
						String mname = t.getClass().getSimpleName().toUpperCase();
						if (nms.toUpperCase().startsWith(mname)) {
							nms = nms.substring(mname.length() + 1);
							map.put(nms, as);
						}
						if (nms.toLowerCase().equals("column"))
							order = as;
						if (nms.toLowerCase().equals("sort"))
							sort = as;
					}
				}
			}
			if (!Common.isEmpty(order) && !Common.isEmpty(sort))
				map.put("orderby", " order by " + order + " " + sort);
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return t;
	}
	/**
	 * @title: findHasHMap
	 * @description: 获取传递的所有参数, 再设置属性值 通过回传Map对象
	 * @return: T
	 */
	public <T> T findHasHMap(Class<T> clazz) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
				.getRequest();
		Enumeration<String> en = request.getParameterNames();
		T t = null;
		try {
			t = clazz.newInstance();
			@SuppressWarnings("unchecked")
			FormMap<String, Object> map = (FormMap<String, Object>) t;
			while (en.hasMoreElements()) {
				String nms = en.nextElement().toString();
				if (!"_t".equals(nms)) {
					if (nms.endsWith("[]")) {
						String[] as = request.getParameterValues(nms);
						if (as != null && as.length != 0 && as.toString() != "[]") {
							map.put(nms, as);
						}
					} else {
						String as = request.getParameter(nms);
						if (!Common.isEmpty(as)) {
							map.put(nms, as);
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}
}

package com.wisesoft.controller.system;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.hyperic.sigar.Sigar;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisesoft.controller.index.BaseController;
import com.wisesoft.entity.system.ServerInfoFormMap;
import com.wisesoft.mapper.system.ServerInfoMapper;
import com.wisesoft.plugin.PageView;
import com.wisesoft.util.Common;
import com.wisesoft.util.PropertiesUtils;
import com.wisesoft.util.SystemInfo;

/**
 * 
 * @author wangyong 2014-11-19
 * @Email: vangyong@126.com
 * @version 1.0v
 */
@Controller
@RequestMapping("/monitor/")
public class MonitorController extends BaseController {
	
	@Inject
	private ServerInfoMapper serverInfoMapper ;
	@RequestMapping("warmListUI")
	public String warmListUI() throws Exception {
		return Common.BACKGROUND_PATH + "/system/monitor/warmList";
	}
	
	@ResponseBody
	@RequestMapping("findByPage")
	public PageView findByPage( String pageNow,
			String pageSize) throws Exception {
		ServerInfoFormMap serverInfoFormMap = getFormMap(ServerInfoFormMap.class);
		serverInfoFormMap=toFormMap(serverInfoFormMap, pageNow, pageSize,serverInfoFormMap.getStr("orderby"));
        pageView.setRecords(serverInfoMapper.findByPage(serverInfoFormMap));
		return pageView;
	}
	
	@RequestMapping("info")
	public String info(Model model) throws Exception {
		model.addAttribute("cpu", PropertiesUtils.findPropertiesKey("cpu"));
		model.addAttribute("jvm", PropertiesUtils.findPropertiesKey("jvm"));
		model.addAttribute("ram", PropertiesUtils.findPropertiesKey("ram"));
		model.addAttribute("toEmail", PropertiesUtils.findPropertiesKey("toEmail"));
		return Common.BACKGROUND_PATH + "/system/monitor/info";
	}
	
	@RequestMapping("realtime")
	public String realtime() throws Exception {
		return Common.BACKGROUND_PATH + "/system/monitor/realtime";
	}
	
	@RequestMapping("systemInfo")
	public String systemInfo(Model model) throws Exception {
		model.addAttribute("systemInfo", SystemInfo.SystemProperty());
		return Common.BACKGROUND_PATH + "/system/monitor/systemInfo";
	}
	
	@ResponseBody
	@RequestMapping("usage")
	public ServerInfoFormMap usage(Model model) throws Exception {
		return SystemInfo.usage(new Sigar());
	}
	/**
	 * 修改配置　
	 * @param request
	 * @param nodeId
	 * @return
	 * @throws Exception
	 */
    @ResponseBody
	@RequestMapping("/modifySer")
    public Map<String, Object> modifySer(String key,String value) throws Exception{
    	Map<String, Object> dataMap = new HashMap<String,Object>();
    	try {
		// 从输入流中读取属性列表（键和元素对）
    		PropertiesUtils.modifyProperties(key, value);
		} catch (Exception e) {
			dataMap.put("flag", false);
		}
    	dataMap.put("flag", true);
		return dataMap;
    }
}
package com.wisesoft.entity.system;

import com.wisesoft.annotation.TableSeg;
import com.wisesoft.util.FormMap;

/**
 * @ClassName: ServerInfoFormMap
 * @description: 主机信息实体
 * @author: wangyong
 * @date: 2016年4月26日 下午10:14:11
 */
@TableSeg(tableName = "SYS_SERVER_INFO", id = "ID")
public class ServerInfoFormMap extends FormMap<String, Object> {
	private static final long serialVersionUID = 1L;
}

package com.wisesoft.mapper.system;

import com.wisesoft.entity.system.RoleResFormMap;
import com.wisesoft.entity.system.UserResFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface RoleResMapper extends BaseMapper {
	/**
	 * @title: deleteByRoleId
	 * @description: TODO
	 * @return: void
	 */
	public void deleteByRoleId(RoleResFormMap map);
	
}

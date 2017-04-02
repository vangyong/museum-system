package com.wisesoft.mapper.system;

import com.wisesoft.entity.system.UserRoleFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface UserRoleMapper extends BaseMapper {
	/**
	 * @title: deleteByUserId
	 * @description: TODO
	 * @return: void
	 */
	public void deleteByUserId(UserRoleFormMap map);
	
}

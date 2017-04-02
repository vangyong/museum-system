package com.wisesoft.mapper.system;

import com.wisesoft.entity.system.UserResFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface UserResMapper extends BaseMapper {
	/**
	 * @title: deleteByUserId
	 * @description: TODO
	 * @return: void
	 */
	public void deleteByUserId(UserResFormMap map);
	
}

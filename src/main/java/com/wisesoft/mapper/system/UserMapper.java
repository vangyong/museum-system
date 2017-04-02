package com.wisesoft.mapper.system;

import java.util.List;

import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface UserMapper extends BaseMapper {
	/**
	 * @title: findByAccount
	 * @description: TODO
	 * @return: List<UserFormMap>
	 */
	public List<UserFormMap> findByAccount(UserFormMap userFormMap);
	
	/**
	 * @title: findUserPage
	 * @description: TODO
	 * @return: List<UserFormMap>
	 */
	public List<UserFormMap> findUserPage(UserFormMap userFormMap);
	
	/**
	 * @title: deleteById
	 * @description: TODO
	 * @return: void
	 */
	public void deleteById(UserFormMap map);
}

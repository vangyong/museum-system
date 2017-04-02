package com.wisesoft.mapper.system;

import java.util.List;

import com.wisesoft.entity.system.RoleFormMap;
import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface RoleMapper extends BaseMapper {
	/**
	 * @title: seletUserRole
	 * @description: TODO
	 * @return: List<RoleFormMap>
	 */
	public List<RoleFormMap> selectUserRole(RoleFormMap map);
	
	/**
	 * @title: deleteById
	 * @description: TODO
	 * @return: void
	 */
	public void deleteById(RoleFormMap map);
	
	
	/**
	 * @title: findRolePage
	 * @description: TODO
	 * @return: List<UserFormMap>
	 */
	public List<RoleFormMap> findRolePage(RoleFormMap roleFormMap);
}

package com.wisesoft.mapper.system;

import java.util.List;

import com.wisesoft.entity.system.ResFormMap;
import com.wisesoft.entity.system.RoleFormMap;
import com.wisesoft.entity.system.UserFormMap;
import com.wisesoft.entity.system.UserRoleFormMap;
import com.wisesoft.mapper.system.BaseMapper;
public interface ResourcesMapper extends BaseMapper {
	
	/**
	 * @title: findAllResources
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findAllResources(ResFormMap map);
	
	/**
	 * @title: findChildlists
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findChildlists(ResFormMap map);
	
	/**
	 * @title: findRes
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findUserRoleRes(UserRoleFormMap map);
	/**
	 * @title: findRes
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findUserRes(ResFormMap map);
	/**
	 * @title: findRoleRes
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findRoleRes(ResFormMap map);
	
	/**
	 * @title: updateSortOrder
	 * @description: TODO
	 * @return: void
	 */
	public void updateSortOrder(List<ResFormMap> map);
	/**
	 * @title: findUserResources
	 * @description: TODO
	 * @return: List<ResFormMap>
	 */
	public List<ResFormMap> findUserResources(String userId);
	
	/**
	 * @title: deleteUserResources
	 * @description: TODO
	 * @return: void
	 */
	public void deleteUserResources(UserFormMap map);
	
	/**
	 * @title: deleteRolerResources
	 * @description: TODO
	 * @return: void
	 */
	public void deleteRolerResources(RoleFormMap map);
	
	
}

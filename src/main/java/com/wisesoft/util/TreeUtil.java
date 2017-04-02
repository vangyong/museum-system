package com.wisesoft.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @ClassName: TreeUtil
 * @description: 树形结构操作工具类
 * @author: wangyong
 * @date: 2016年5月13日 下午11:03:11
 */
public class TreeUtil {
	/**
	 * @title: getChildTreeObjects
	 * @description: 根据父节点的ID获取所有子节点
	 * @param list 分类表
	 * @param typeId 父节点ID
	 * @return: List<TreeObject>
	 */
	public List<TreeObject> getChildTreeObjects(List<TreeObject> list, String parentId) {
		List<TreeObject> returnList = new ArrayList<TreeObject>();
		for (Iterator<TreeObject> iterator = list.iterator(); iterator.hasNext();) {
			TreeObject t = (TreeObject) iterator.next();
			// 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
			if (t.getPARENTID().equals(parentId)) {
				recursionFn(list, t);
				returnList.add(t);
			}
		}
		return returnList;
	}
	/**
	 * @title: recursionFn
	 * @description: 递归列表
	 * @param list 分类表
	 * @param t 节点对象
	 * @return: void
	 */
	private void recursionFn(List<TreeObject> list, TreeObject t) {
		List<TreeObject> childList = getChildList(list, t);// 得到子节点列表
		t.setCHILDREN(childList);
		for (TreeObject tChild : childList) {
			if (hasChild(list, tChild)) {// 判断是否有子节点
				// returnList.add(TreeObject);
				Iterator<TreeObject> it = childList.iterator();
				while (it.hasNext()) {
					TreeObject n = (TreeObject) it.next();
					recursionFn(list, n);
				}
			}
		}
	}
	/**
	 * @title: getChildList
	 * @description: 得到子节点列表
	 * @param list 分类表
	 * @param t 节点对象
	 * @return: List<TreeObject>
	 */
	private List<TreeObject> getChildList(List<TreeObject> list, TreeObject t) {
		List<TreeObject> tlist = new ArrayList<TreeObject>();
		Iterator<TreeObject> it = list.iterator();
		while (it.hasNext()) {
			TreeObject n = (TreeObject) it.next();
			if (n.getPARENTID().equals(t.getID())) {
				tlist.add(n);
			}
		}
		return tlist;
	}

	List<TreeObject> returnList = new ArrayList<TreeObject>();

	/**
	 * @title: getChildTreeObjects
	 * @description: 根据父节点的ID获取所有子节点
	 * @param list 分类表
	 * @param typeId 传入的父节点ID
	 * @param prefix 子节点前缀
	 * @return: List<TreeObject>
	 */
	public List<TreeObject> getChildTreeObjects(List<TreeObject> list, String typeId, String prefix) {
		if (list == null)
			return null;
		for (Iterator<TreeObject> iterator = list.iterator(); iterator.hasNext();) {
			TreeObject node = (TreeObject) iterator.next();
			// 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
			if (node.getPARENTID().equals(typeId)) {
				recursionFn(list, node, prefix);
			}
			// 二、遍历所有的父节点下的所有子节点
			/*
			 * if (node.getParentId()==0) { recursionFn(list, node); }
			 */
		}
		return returnList;
	}
	/**
	 * @title: recursionFn
	 * @description: 递归列表
	 * @param list 分类表
	 * @param node 节点对象
	 * @param p 名称
	 * @return: void
	 */
	private void recursionFn(List<TreeObject> list, TreeObject node, String p) {
		List<TreeObject> childList = getChildList(list, node);// 得到子节点列表
		if (hasChild(list, node)) {// 判断是否有子节点
			returnList.add(node);
			Iterator<TreeObject> it = childList.iterator();
			while (it.hasNext()) {
				TreeObject n = (TreeObject) it.next();
				n.setNAME(p + n.getNAME());
				recursionFn(list, n, p + p);
			}
		} else {
			returnList.add(node);
		}
	}
	
	/**
	 * @title: hasChild
	 * @description: 判断是否有子节点
	 * @param list 分类表
	 * @param t 节点对象
	 * @return: boolean
	 */
	private boolean hasChild(List<TreeObject> list, TreeObject t) {
		return getChildList(list, t).size() > 0 ? true : false;
	}
}

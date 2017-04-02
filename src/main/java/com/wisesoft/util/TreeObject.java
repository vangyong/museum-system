package com.wisesoft.util;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: TreeObject
 * @description: 表树形式显示的实体,字段是在前台显示所有的,可修改
 * @author: wangyong
 * @date: 2016年5月13日 下午11:09:08
 */
public class TreeObject {
	private String ID;
	private String PARENTID;
	private String NAME;
	private String PARENTNAME;
	private String RESKEY;
	private String RESURL;
	private Integer LEVEL;
	private String TYPE;
	private String DESCRIPTION;
	private String ICON;
	private Integer ISHIDE;
	private List<TreeObject> CHILDREN = new ArrayList<TreeObject>();
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPARENTID() {
		return PARENTID;
	}
	public void setPARENTID(String pARENTID) {
		PARENTID = pARENTID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getPARENTNAME() {
		return PARENTNAME;
	}
	public void setPARENTNAME(String pARENTNAME) {
		PARENTNAME = pARENTNAME;
	}
	public String getRESKEY() {
		return RESKEY;
	}
	public void setRESKEY(String rESKEY) {
		RESKEY = rESKEY;
	}
	public String getRESURL() {
		return RESURL;
	}
	public void setRESURL(String rESURL) {
		RESURL = rESURL;
	}
	public Integer getLEVEL() {
		return LEVEL;
	}
	public void setLEVEL(Integer lEVEL) {
		LEVEL = lEVEL;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String tYPE) {
		TYPE = tYPE;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public String getICON() {
		return ICON;
	}
	public void setICON(String iCON) {
		ICON = iCON;
	}
	public Integer getISHIDE() {
		return ISHIDE;
	}
	public void setISHIDE(Integer iSHIDE) {
		ISHIDE = iSHIDE;
	}
	public List<TreeObject> getCHILDREN() {
		return CHILDREN;
	}
	public void setCHILDREN(List<TreeObject> cHILDREN) {
		CHILDREN = cHILDREN;
	}

	
}

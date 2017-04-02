package com.wisesoft.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 需要给两个值<br>
 * tableName = "表名"<br>
 * id = "表的主键"(如果是多个主建,默认为第一个)<br>
 * @author wangyong 2015-09-02
 * @Email: vangyong@126.com
 * @version 3.1v
 */
@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Inherited
@Documented
public @interface TableSeg {
	/**
	 * @title: tableName
	 * @description: 表名
	 * @return: String
	 */
	public String tableName();
	/**
	 * @title: id
	 * @description: 表的主键,如果是多个主建,默认为第一个
	 * @return: String
	 */
	public String id();
}

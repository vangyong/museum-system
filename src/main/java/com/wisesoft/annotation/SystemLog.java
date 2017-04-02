package com.wisesoft.annotation;

import java.lang.annotation.*;

/**
 * @ClassName: SystemLog
 * @description: 自定义注解
 * @author: wangyong
 * @date: 2016年5月13日 下午11:23:14
 */
@Target({ ElementType.PARAMETER, ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SystemLog {
	String module() default ""; // 模块名称 系统管理-用户管理－列表页面
	String methods() default ""; // 新增用户
	String description() default ""; // 概要描述
}

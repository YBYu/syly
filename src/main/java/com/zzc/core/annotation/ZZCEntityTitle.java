package com.zzc.core.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * 
 * @author  张代浩
 *
 */
@Retention(RetentionPolicy.RUNTIME)
public @interface ZZCEntityTitle {
	  String name();
}

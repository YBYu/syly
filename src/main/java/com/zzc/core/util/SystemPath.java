package com.zzc.core.util;


/**
 * 
 * @author wanye
 * @date Dec 14, 2008
 * @version v 1.0
 * @description 得到当前应用的系统路径
 */
public class SystemPath {

	public static String getSysPath()
	{
		String path= Thread.currentThread().getContextClassLoader().getResource("").toString();
		String temp=path.replaceFirst("file:/", "").replaceFirst("WEB-INF/classes/", "");
		String separator= System.getProperty("file.separator");
		String resultPath=temp.replaceAll("/", separator+separator);
		return resultPath;
	}
	public static String getClassPath()
	{
		String path= Thread.currentThread().getContextClassLoader().getResource("").toString();
		String temp=path.replaceFirst("file:/", "");
		String separator= System.getProperty("file.separator");
		String resultPath=temp.replaceAll("/", separator+separator);
		return resultPath;
	}
	public static String getSystempPath()
	{
		return System.getProperty("java.io.tmpdir");
	}
	public static String getSeparator()
	{
		return System.getProperty("file.separator");
	}
	
	public static void main(String[] args){
		com.zzc.core.util.LogUtil.info(getSysPath());
		com.zzc.core.util.LogUtil.info(System.getProperty("java.io.tmpdir"));
		com.zzc.core.util.LogUtil.info(getSeparator());
		com.zzc.core.util.LogUtil.info(getClassPath());
	}
}

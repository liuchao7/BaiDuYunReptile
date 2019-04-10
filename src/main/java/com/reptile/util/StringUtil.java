package com.reptile.util;

/**
 * ×Ö·û´®¹¤¾ßÀà
 * @author 
 *
 */
public class StringUtil {

	/**
	 * ÅÐ¶ÏÊÇ·ñÎª¿Õ
	 * @param str ×Ö·û´®
	 * @return
	 */
	public static boolean isEmpty(String str){
		if("".equals(str)|| str==null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * ÅÐ¶ÏÊÇ·ñ²»Îª¿Õ
	 * @param str ×Ö·û´®
	 * @return
	 */
	public static boolean isNotEmpty(String str){
		if(!"".equals(str)&&str!=null){
			return true;
		}else{
			return false;
		}
	}
	
	
}

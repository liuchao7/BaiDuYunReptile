package com.reptile.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期工具类
 * @author 
 *
 */
public class DateUtil {

	/**
	 * 格式化日期
	 * @param date 日期对象
	 * @param format  格式
	 * @return
	 */
	public static String formatDate(Date date,String format){
		String result="";
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		if(date!=null){
			result=sdf.format(date);
		}
		return result;
	}
	
	/**
	 * 格式化日期
	 * @param str  日期字符串
	 * @param format 格式
	 * @return
	 * @throws Exception
	 */
	public static Date formatString(String str,String format) throws Exception{
		if(StringUtil.isEmpty(str)){
			return null;
		}
		SimpleDateFormat sdf=new SimpleDateFormat(format);
		return sdf.parse(str);
	}
	
	/**
	 * 获取当前日期
	 * @return
	 * @throws Exception
	 */
	public static String getCurrentDateStr()throws Exception{
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddhhmmss");
		return sdf.format(date);
	}
	
	public static void main(String[] args) {
		System.out.println(DateUtil.formatDate(new Date(), "yyyy-MM-dd HH:mm"));
	}
	
	
}

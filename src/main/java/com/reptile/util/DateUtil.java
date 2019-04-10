package com.reptile.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * ���ڹ�����
 * @author 
 *
 */
public class DateUtil {

	/**
	 * ��ʽ������
	 * @param date ���ڶ���
	 * @param format  ��ʽ
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
	 * ��ʽ������
	 * @param str  �����ַ���
	 * @param format ��ʽ
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
	 * ��ȡ��ǰ����
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

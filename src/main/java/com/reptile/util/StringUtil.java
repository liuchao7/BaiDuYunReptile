package com.reptile.util;

/**
 * �ַ���������
 * @author 
 *
 */
public class StringUtil {

	/**
	 * �ж��Ƿ�Ϊ��
	 * @param str �ַ���
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
	 * �ж��Ƿ�Ϊ��
	 * @param str �ַ���
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

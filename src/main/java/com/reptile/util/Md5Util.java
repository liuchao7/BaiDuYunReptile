package com.reptile.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * 加密工具类
 * @author user
 *
 */
public class Md5Util {

	public static final String SALT="open1111";
	
	/**
	 * Md5加密
	 * @param str
	 * @param salt
	 * @return
	 */
	public static String md5(String str,String salt){
		return new Md5Hash(str, salt).toString();
	}
	
	public static void main(String[] args) {
		String password="123456";
		System.out.println("Md5加密："+Md5Util.md5(password, SALT));
	}
}

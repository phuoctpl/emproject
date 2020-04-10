package com.fudn.em.action;

import com.fudn.em.common.CommonsUtils;

public class Test {
	public static void main(String[] args){
		String passwd = "12345";
		String encryptedPasswd1 = CommonsUtils.encryptPassword(passwd);
		String encryptedPasswd2 = CommonsUtils.encryptPassword(passwd);
		
		System.out.println(encryptedPasswd1);
		System.out.println(encryptedPasswd2);
//		
//		System.out.println(CommonsUtils.authenticatePassword(passwd, encryptedPasswd1));
//		System.out.println(CommonsUtils.authenticatePassword(passwd, encryptedPasswd2));
	}
}

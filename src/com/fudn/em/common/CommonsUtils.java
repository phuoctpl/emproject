package com.fudn.em.common;

import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Random;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.validator.GenericValidator;

public abstract class CommonsUtils {

	/**
	 * Check object is null or not
	 * @param object
	 * @return true if object is null, false for otherwise
	 */
	public static <T> boolean isNull(T object) {
		return object == null;
	}
	
	public static String memberRole(int role) {
		switch (role) {
		case Constant.EM_ROLE_ADMIN:
			return "Admin";
		case Constant.EM_ROLE_SUPER_ADMIN:
			return "Super Admin";
		case Constant.EM_ROLE_MEMBER:
			return "Member";
			default: return null;
		}
	}	
	
	/**
	 * Check input string is null,blank or not
	 * @param stringInput
	 * @return true if string is null or blank else return false
	 */
	public static boolean isBlankOrNull(String stringInput) {
		return GenericValidator.isBlankOrNull(stringInput);
	}
	
	/**
	 * Check String is phone number or not 
	 * @param phoneNumber
	 * @return true if string is phoneNumberType else return false
	 */
	public static boolean isPhoneNumber(String phoneNumber) {
		return phoneNumber.matches(Constant.PHONE_FORMAT);
	}
	
	/**
	 * check string is numberic or not
	 * @param number
	 * @return  - true if String input is number else return false
	 */		
	public static boolean isNumberic(String number){
		return StringUtils.isNumeric(number);
	}
	
	/**
	 * parse String to integer
	 * @param intStr : String input
	 * @return 0 if appear NumberFormatException or String input is null
	 * otherwise return integer value of String
	 */
	public static int parseInt(String intStr){
		if(CommonsUtils.isBlankOrNull(intStr)){
			try {
				return Integer.parseInt(intStr);
			} catch (NumberFormatException e) {
				return 0;
			}
		} else {
			return 0;
		}
	}
	
	/**
	 * Common method for encrypt password. Using MD5 and salt
	 * @param password
	 * @return md5 ecrypted password if password not null else return blank for otherwise
	 */ 
	public static String encryptPassword(String password) {
		int idx = new Random().nextInt(Constant.salt.length);
		String salt = Constant.salt[idx];
		
		if (StringUtils.isBlank(password)) {
			return "";
		} else {
			return DigestUtils.md5Hex(password + salt);
		}
	}
	
	/**
	 * Common method for authenticate inputed password and password in database 
	 * @param password
	 * @param passwordDB
	 * @return true if inputed password after encrypted is equals with password in database 
	 */
	public static boolean authenticatePassword(String password, String passwordDB) {
		String encryptedPw = null;
		for (int i = 0; i < Constant.salt.length; i++) {
			encryptedPw = DigestUtils.md5Hex(password + Constant.salt[i]);
			if(encryptedPw.equals(passwordDB)){
				return true;
			}
		}
		return false;
	}
	/**
	 * Parse date from string (VietNamese format)
	 * @param dateString
	 * @param format : type date format : MM/dd/yyyy or dd/MM/yyyy 
	 * @return Parsed date or null if parsing fail (instead throw exception)
	 */
	public static Date parseDate(String dateString) {
			try{
				return DateUtils.parseDate(dateString, Constant.DATE_FORMAT_INTERNATIONAL);
			} catch (ParseException ex){
				return null;
			}
	}
	
	public static String getCurrentDate() {
		Date date = new Date();
		return DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.SHORT).format(date);
	}
	
	public static void main(String[] args){
		System.out.println(getCurrentDate());
	}
	/**
	 * Convert java.util.date to java.sql.date 
	 * @param date
	 * @return null if date is null or return java.sql.date
	 */
	public static java.sql.Date toSQLDate(Date date){
		return date == null ? null : new java.sql.Date(date.getTime());
	}
	/**
	 * Convert date to string
	 * @param date : date input
	 * @param format: type date format : MM/dd/yyyy or dd/MM/yyyy
	 * @return date String
	 */
	public static String dateFormat(Date date) {
			return date == null ? null : DateFormatUtils.format(date, Constant.DATE_FORMAT_INTERNATIONAL); // format: MM/dd/yyyy
	}

	
	/**
	 * Check String input is Date or not
	 * @param date
	 * @return true if is Date or false for otherwise
	 */
	public static boolean isDate(String date){
		return GenericValidator.isDate(date, Constant.DATE_FORMAT_VIETNAMESE, false);
	}
	
	/**
	 * Compare 2 date, check date 1 date 2 is date and not null to use 
	 * @param date1
	 * @param date2
	 * @return 0 if date 1 = date 2 or 
	 * 			1 if date 1 is after date 2 or 
	 * 			-1 if date 1 is before date 2
	 * 			-2 compared fail 
	 */
	public static int compareDate(Date date1, Date date2) {
		if(date1 == null || date2 == null ){
			return -2;
		} else if (date1.equals(date2)) {
			return 0;
		} else if (date1.after(date2)) {
			return 1;
		} else {
			return -1;
		}
		
	}
	
	/**
	 * Convert String to capitalize its self
	 * @param string
	 * @return String capitalized 
	 */
	public static String capitalize(String string) {
		return StringUtils.capitalize(string);
	}
	
	/**
	 * Check length string is in bound of lenght 's string value 
	 * @param value : value of String
	 * @param string_min : int value min of string' s length
	 * @param string_max : int value max of string' s length 
	 * @return true if length is in bound or false for otherwise 
	 */
	public static boolean checkLengthString(String value, int string_min, int string_max){
		return GenericValidator.minLength(value, string_min) && GenericValidator.maxLength(value, string_max);
	}
	
	public static boolean checkMinLength(String value, int min){
		return GenericValidator.minLength(value, min);
	}
}

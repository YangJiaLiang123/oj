package com.etc.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Check {
	 /**
	  * ��֤����
	  * @param email
	  * @return
	  */
	 public static boolean checkEmail(String email){
		  boolean flag = false;
		  try{
		    String check = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		    Pattern regex = Pattern.compile(check);
		    Matcher matcher = regex.matcher(email);
		    flag = matcher.matches();
		   }catch(Exception e){
		    flag = false;
		   }
		  return flag;
		 }
		 
	 /**
	  * ��֤�ֻ�����
	  * @param mobiles
	  * @return
	  */
	 public static boolean checkMobileNumber(String mobileNumber){
	  boolean flag = false;
	  try{
	    Pattern regex = Pattern.compile("^(((13[0-9])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8})|(0\\d{2}-\\d{8})|(0\\d{3}-\\d{7})$");
	    Matcher matcher = regex.matcher(mobileNumber);
	    flag = matcher.matches();
	   }catch(Exception e){
	    flag = false;
	   }
	  return flag;
	 }
	 
	 public static boolean checkPassword(String password) {
		 boolean flag = false;
		 try {
			 Pattern regex = Pattern.compile("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$");
			 Matcher matcher = regex.matcher(password);
			 flag = matcher.matches();
		} catch (Exception e) {
			flag = false;
		}		 
		 return flag;
	 }
}
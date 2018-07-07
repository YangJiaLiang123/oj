package com.etc.action;

import com.etc.bean.Studnet;
import com.etc.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller  
@RequestMapping("admin/page/user/")
public class AdminAxajAction {
	
	 @Resource
	 private StudentService studentService;
	 
    @RequestMapping("verifyName")
    public @ResponseBody String verifyName(@RequestParam String name) {  	
    	Studnet result = studentService.selectByName(name);
    	if(name.equals("")) { 
    		return "false1";   		
    	}else if(result == null){
    		return "true";
    	}else {
    		return "false";
    	} 	
    }
    
    @RequestMapping("NickName")
    public @ResponseBody String NickName(@RequestParam String name) {  
    	Studnet studnet = studentService.selectByNickName(name);
    	if(name.equals("")) {
    		return "false1"; 
    	}else if(studnet == null){
    		return "true";
    	}else {
    		return "false";
    	} 	
    }
    
    @RequestMapping("passWord")
    public @ResponseBody String passWord(@RequestParam String name) {  
    	boolean result = studentService.checkPassword(name);
    	if(name.equals("")){
    		return "false1";
    	}else if(result == false) {
    		return "false"; 
    	}else {
    		return "true";
    	} 	
    }
    
    
    @RequestMapping("email")
    public @ResponseBody String email(@RequestParam String name) {  
    	Studnet studnet = studentService.selectByEmail(name);
    	boolean result = studentService.checkEmail(name);
    	if(name.equals("")){
    		return "false1";
    	}else if(result == false) {
    		return "false"; 
    	}else if(studnet != null){
    		return "false2";
    	}else {
    		return "true";
    	} 	
    }
    
    @RequestMapping("telephone")
    public @ResponseBody String telephone(@RequestParam String name) {  
    	Studnet studnet = studentService.selectByTelephone(name);
    	boolean result = studentService.checkTelephone(name);
    	if(name.equals("")){
    		return "false1";
    	}else if(result == false) {
    		return "false"; 
    	}else if(studnet != null){
    		return "false2";
    	}else {
    		return "true";
    	} 	
    }

}

package com.etc.action;

import com.etc.bean.Studnet;
import com.etc.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller  
@RequestMapping("/")
public class StudentAction {  
    @Resource  
    private StudentService studentService;  
      
    //��֤�û���¼
    @RequestMapping("/login")  
    public String select(Studnet studnet,String verification,HttpServletRequest request){
    	HttpSession session = request.getSession();
        Studnet resultStudent = studentService.select(studnet);
        String rand = (String)session.getAttribute("rand");
        if(resultStudent == null){  
            request.setAttribute("error","�û������������");
            return "login";
        }else if(!verification.equals(rand)){
        	request.setAttribute("student", studnet);
        	request.setAttribute("error", "��֤�����");
        	return "login";
        }else{
        	System.out.println("pass");
	        session.setAttribute("login_id", resultStudent.getId());
	        session.setAttribute("usertype", resultStudent.getType());
            session.setAttribute("username", studnet.getStudentname());
            return "page/refresh";
        }  
    }

	//��֤�û���¼
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		if(username!=null){
			session.removeAttribute("username");
			session.removeAttribute("usertype");
			session.removeAttribute("login_id");
			return "redirect:/";
		}
		return "redirect:/";
	}

	//�û�ע��
	@RequestMapping("/register")
    public String register(Studnet studnet,String newPassword,HttpServletRequest request) {
    	String radio = request.getParameter("type");
    	if (radio==null)
    		radio=String.valueOf(1);
        if(!studnet.getPassword().equals(newPassword)){
    		request.setAttribute("student", studnet);
    		request.setAttribute("newPassword", newPassword);
    		request.setAttribute("newPassword1", "�����������벻һ��");
    		return "WebContent/user/register";
    	}else {
    		if(radio == null) {
    			request.setAttribute("student", studnet);
    			request.setAttribute("newPassword", newPassword);
        		request.setAttribute("type", "��ѡ��ע������");
        		return "WebContent/user/register";    			
    		}else if(radio.equals("2")) {
    			studnet.setType("2");
    		}else if(radio.equals("1")) {
    			studnet.setType("1");
    		}
    		int i = studentService.insert(studnet);
        	if(i == 1) {
        		request.setAttribute("register", "ע��ɹ�");
        		return "WebContent/user/register";
        	}else {
        		request.setAttribute("register", "ע��ʧ��");
    			return "WebContent/user/register";
    		}
    	} 	
    }
	
    @RequestMapping("/change")
    public String change(Studnet studnet,HttpServletRequest request) {   	
    		int i = studentService.update(studnet);
        	if(i == 1) {
        		request.setAttribute("change", "���ĳɹ�");
        		return "change";
        	}else {
        		request.setAttribute("change", "����ʧ��");
    			return "change";
    		}
    }
    
    @RequestMapping("/deleteStudent")
    public String delete(Studnet studnet,HttpServletRequest request) {
    	Studnet studnet2 = studentService.selectByName(studnet.getStudentname());
    	int a = studnet2.getId();
    	int b = studentService.deleteByPrimaryKey(a);
    	if(b == 1) {
    		
    	}
    	return "delete";
    }   
    
    //ajax��֤�û����Ƿ����
    @RequestMapping("/verifyName")
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
    
    //ajax��֤�ǳ��Ƿ����
    @RequestMapping("/NickName")
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
   
    @RequestMapping("/passWord")
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
    
    @RequestMapping("/email")
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
    
    @RequestMapping("/telephone")
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

    @RequestMapping("info.do")
	public String info(HttpServletRequest request){
    	Integer id =(Integer) request.getSession().getAttribute("login_id");
	    Studnet student = studentService.selectById(id);
	    request.setAttribute("student",student);
	    return "page/info";
    }
}  
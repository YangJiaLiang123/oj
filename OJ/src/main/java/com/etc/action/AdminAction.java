package com.etc.action;

import com.etc.bean.Admin;
import com.etc.bean.superAdmin;
import com.etc.service.AdminService;
import com.etc.service.StudentService;
import com.etc.service.TopicService;
import com.etc.service.superAdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller  
@RequestMapping("admin/")
public class AdminAction {
	
	@Resource
	private AdminService adminService;
	@Resource
	private superAdminService superAdminService;

	@Resource
	private StudentService studentService;
	@Resource
	private TopicService topicService;

	@RequestMapping("page/main")
	public String main(HttpServletRequest request){
		System.out.println(studentService.selectStudentCounts());
		System.out.println(studentService.selectTeacherCounts());
		System.out.println(topicService.selectCount());
		String admin = ((String)request.getSession().getAttribute("adminname"));
		if(admin!=null&&admin.equals("admin")){
			request.setAttribute("adminCount",adminService.selectAdminCounts());
		}
		request.setAttribute("studentCount",studentService.selectStudentCounts());
		request.setAttribute("teacherCount",studentService.selectTeacherCounts());
		request.setAttribute("topicCount",topicService.selectCount());
//		request.setAttribute("topicCount",topicService.selectCount());
		return "admin/page/main";
	}
	
	@RequestMapping("login")
	public String login(Admin admin,String verification,HttpServletRequest request) {
		String string = "admin/login";
		String string2 = "redirect:index.jsp";
		HttpSession session = request.getSession(); 
		 String rand = (String)session.getAttribute("rand");
		if(admin.getAdminname().equals("admin")) {
			superAdmin admin3 = new superAdmin();
			admin3.setSupername(admin.getAdminname());
			admin3.setPassword(admin.getPassword());
			superAdmin admin2 = superAdminService.selectByPrimaryKey(admin3);
	        if(admin2 == null){  
	            request.setAttribute("msg","�û������������");  
	            return string;  
	        }else if(!verification.equals(rand)){
	        	request.setAttribute("admin", admin);
	        	request.setAttribute("msg", "��֤�����");
	        	return string;
	        }else{
	        	session.setAttribute("adminname", admin2.getSupername());
				return string2;				
			}	
		}else {
			Admin admin2 = adminService.select(admin);			
	        if(admin2 == null){  
	            request.setAttribute("msg","�û������������");  
	            return string;  
	        }else if(!verification.equals(rand)){
	        	request.setAttribute("admin", admin2);
	        	request.setAttribute("msg", "��֤�����");
	        	return string;
	        }else{
	        	session.setAttribute("adminname", admin2.getAdminname());
				return string2;
			}	
		}		
	}

	@RequestMapping("page/user/updatePassword")
	public String updatePassword(String password,String newpassword,String newpassword1,HttpServletRequest request) {
		String string = "WebContent/admin/page/user/changeSelfPwd";
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		Admin admin2 = adminService.selectByName(admin.getAdminname());
		if(!admin2.getPassword().equals(password)) {
			request.setAttribute("newpassword", newpassword);
			request.setAttribute("newpassword1", newpassword1);
			request.setAttribute("error", "ԭ�����������!");
			return string;
		}else if(!newpassword.equals(newpassword1)) {
			request.setAttribute("password", password);
			request.setAttribute("error1", "�����������벻һ��!");
			return string;
		}else {
			admin2.setPassword(newpassword);
			int i = adminService.updatePassword(admin2);
			if(i == 1) {
				request.setAttribute("success", "<script>layer.alert('�޸ĳɹ���');</script>");
				return string;
			}else {
				request.setAttribute("success", "�����޸�ʧ��!");
				return string;
			}
		}
	}	
}

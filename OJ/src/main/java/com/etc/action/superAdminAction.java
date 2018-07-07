package com.etc.action;

import com.etc.bean.Admin;
import com.etc.bean.Page;
import com.etc.common.PageSelect;
import com.etc.service.AdminService;
import com.etc.service.superAdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("admin/page/toadmin/")
public class superAdminAction {
	@Resource
	private superAdminService superAdminService;
	@Resource
	private AdminService adminService;
	
	@RequestMapping("deleteAdmin")
	public String deleteAdmin(Page page,Integer id,HttpServletRequest request) {
		adminService.deleteByPrimaryKey(id);
		return adminList(page, request);
	}
	
	@RequestMapping("deleteAll")
	public String deleteAll(Page page,HttpServletRequest request) {
		String item = request.getParameter("tempString");
        String temp[] = item.split(",");
        for(int i=0;i<temp.length;i++) {
        	int a = Integer.parseInt(temp[i]);
        	adminService.deleteByPrimaryKey(a);
        }
		return adminList(page, request);
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("selectAdmin")
	public String selectAdmin(Page page,String adminname,HttpServletRequest request) {
		String string = "admin/page/toadmin/adminList";
		page = new PageSelect().targetPage(page);
		page.setQueryCondition(adminname);
        List<Admin> Invlist = adminService.selectSome(page);
        Integer totalCounts = adminService.selectAllCounts(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "selectAdmin.do");
        request.setAttribute("string", adminname);
		return string;
	}
	
	@RequestMapping("changeAdminInfo")
	public String changeAdminInfo(Integer id,HttpServletRequest request) {
		Admin admin = adminService.selectById(id);
		request.setAttribute("admin",admin );
		return "admin/page/toadmin/changeAdminInf";
	}
	
	@RequestMapping("changeAdminInf")
	public String changeAdminInf(Page page,Admin admin,String word,String newPassword,HttpServletRequest request) {		
		String string = "admin/page/toadmin/changeAdminInf";
		if(word.equals("") || word == null || newPassword.equals("") || newPassword == null) {
			adminService.updateByPrimaryKeySelective(admin);			
			return adminList(page, request);
		}else {
			if(!word.equals(newPassword)) {
				request.setAttribute("admin", admin);
				request.setAttribute("newPassword1", "�����������벻һ��");
				return string;
			}else {				
				admin.setPassword(word);			
				adminService.updateByPrimaryKeySelective(admin);				
				return adminList(page, request);
			}
	   }
	}
	
	@RequestMapping("verifyName")
    public @ResponseBody String verifyName(@RequestParam String name) {  	
		System.out.println("123");
    	Admin result = adminService.selectByName(name);
    	if(name.equals("")) { 
    		return "false1";   		
    	}else if(result == null){
    		return "true";
    	}else {
    		return "false";
    	} 	
    }
	
	@RequestMapping("addAdmin")
	public String addAdmin(Page page,Admin admin,String newpassword,HttpServletRequest request) {
		if(!admin.getPassword().equals(newpassword)) {
			request.setAttribute("admin", admin);
			request.setAttribute("error", "�����������벻һ��");
			return "admin/page/toadmin/addAdmin";
		}else {
			adminService.insert(admin);
			return adminList(page, request);
		}
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("adminList")
	public String adminList(Page page,HttpServletRequest request) {
		String string = "admin/page/toadmin/adminList";
		page = new PageSelect().targetPage(page);
        List<Admin> Invlist = adminService.selectAll(page);
        Integer totalCounts = adminService.selectAllCounts(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "adminList.do");
		return string;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

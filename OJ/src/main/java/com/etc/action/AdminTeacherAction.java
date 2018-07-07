package com.etc.action;

import com.etc.bean.Page;
import com.etc.bean.Studnet;
import com.etc.common.PageSelect;
import com.etc.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller  
@RequestMapping("admin/page/user/")
public class AdminTeacherAction {

	@Resource
	private StudentService studentService;
	
	@SuppressWarnings("static-access")
	@RequestMapping("teacherList")
	public String teacherList(Page page,HttpServletRequest request) {
		String string = "admin/page/user/teacherList";
		String i = "2";
		page = new PageSelect().targetPage(page);
        page.setQueryCondition(i);
        List<Studnet> Invlist = studentService.selectAll(page);
        Integer totalCounts = studentService.selectAllCounts(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "teacherList.do");
		return string;
	}
	
	@RequestMapping("deleteTeacher")
	public String deleteTeacher(Integer id,HttpServletRequest request) {
		Page page = new Page();
		int b = studentService.deleteByPrimaryKey(id);
		if(b==1) {	
			return teacherList(page,request);
		}else {
			return teacherList(page, request);
		}
	}
	
	@RequestMapping("changeTeacherInfo")
	public String changeTeacherInfo(Integer id,HttpServletRequest request) {
		String string = "admin/page/user/changeTeacherInf";
		Studnet studnet = studentService.selectById(id);
		request.setAttribute("student", studnet);
		return string;
	}
	
	@RequestMapping("changeTeacherInf")
	public String changeTeacherInf(Studnet studnet,String word,String newPassword,HttpServletRequest request) {
		String string = "admin/page/user/changeTeacherInf";
		if(word.equals("") || word == null || newPassword.equals("") || newPassword == null) {
			studentService.updateSelective(studnet);
			request.setAttribute("success","<script>layer.alert('�޸ĳɹ�!');</script>" );
			Page page = new Page();
			return teacherList(page, request);
		}else {
			if(!word.equals(newPassword)) {
				request.setAttribute("student", studnet);
				request.setAttribute("newPassword1", "�����������벻һ��");
				return string;
			}else {
				studnet.setPassword(word);
				studentService.updateSelective(studnet);
				request.setAttribute("success","<script>layer.alert('�޸ĳɹ�!');</script>" );
				Page page = new Page();
				return teacherList(page, request);
			}
		}		
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("selectTeacher")
    public String selectTeacher(Page page,String string,HttpServletRequest request) {	
		String aString = "admin/page/user/teacherList";
		page = new PageSelect().targetPage(page);
		page.setQueryCondition(string);        
        List<Studnet> Invlist = studentService.selectSome(page);
        Integer totalCounts = studentService.selectSomeCounts(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "selectTeacher.do");
        request.setAttribute("string", string);
		return aString;
    }
	
	@RequestMapping("addTeacher")
	public String addTeacher(Studnet studnet,String newPassword,HttpServletRequest request) {
		String string = "admin/page/user/addTeacher";
		if(!studnet.getPassword().equals(newPassword)) {
			request.setAttribute("student", studnet);
			request.setAttribute("newPassword1", "�����������벻һ��");
			return string;
		}else {
			studentService.insert(studnet);
			Page page = new Page();
			return teacherList(page, request);
		}
	}

	@RequestMapping("deleteAllTeacher")
	public String deleteAllTeacher(Page page,HttpServletRequest request) {
		String item = request.getParameter("tempString");
        String temp1[] = item.split(",");
        for(int i=0;i<temp1.length;i++) {
        	int a = Integer.parseInt(temp1[i]);
        	studentService.deleteByPrimaryKey(a);
        }
		return teacherList(page, request);
	}
}

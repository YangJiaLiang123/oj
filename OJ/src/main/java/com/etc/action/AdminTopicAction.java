package com.etc.action;

import com.etc.bean.Page;
import com.etc.bean.Topic;
import com.etc.common.PageSelect;
import com.etc.service.TopicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@Controller  
@RequestMapping("admin/page/topics/")
public class AdminTopicAction {
	
	@Resource
	private TopicService topicService;
	
	@SuppressWarnings("static-access")
	@RequestMapping("topicsList")
	public String topicsList(Page page,HttpServletRequest request) {
		String string = "admin/page/topics/topicsList";
		page = new PageSelect().targetPage(page);
		page.setQueryCondition(null);//��ѯ����             
        List<Topic> Invlist = topicService.searchInvList(page);
        Integer totalCounts = topicService.searchTotalCount(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "topicsList.do");
		return string;
	}
	
	@RequestMapping("deleteAllTopics")
	public String deleteAllTopics(Page page,HttpServletRequest request) {
		String item = request.getParameter("tempString");
        String temp1[] = item.split(",");
        for(int i=0;i<temp1.length;i++) {
        	int a = Integer.parseInt(temp1[i]);
        	topicService.deleteInvition(a);
        }
		return topicsList(page, request);
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("selectTopic")
	public String selectTopic(Page page,String string,HttpServletRequest request) {
		String aString = "admin/page/topics/topicsList";;
		page = new PageSelect().targetPage(page);
		page.setQueryCondition(string);//��ѯ����             
        List<Topic> Invlist = topicService.getInvBycondtion(page);
        Integer totalCounts = topicService.searchTotalCount(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "selectTopic.do");
        request.setAttribute("string", string);
		return aString;
	}
	
	@RequestMapping("changeTopicInfo")
	public String changeTopicInfo(Integer id,HttpServletRequest request) {
		String string = "admin/page/topics/changeTopicInf";
		Topic topic = topicService.selectById(id);
		request.setAttribute("topic", topic);
		return string;
	}
	
	@RequestMapping("changeTopicInf")
	public String changeTopicInf(Topic topic,Page page,HttpServletRequest request) {
		topicService.updateByPrimaryKeySelective(topic);
		return topicsList(page,request);
	}
	
	@RequestMapping("deleteTopic")
	public String deleteTopic(Integer id,Page page,HttpServletRequest request) {
		topicService.deleteInvition(id);
		return topicsList(page,request);
	}
	
	@RequestMapping("insertTopic")
	public String insertTopic(Page page,Topic topic,@RequestParam MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {		
		Date day = new Date(new java.util.Date().getTime());
		topic.setCreateDate(day);
		topicService.insertSelective(topic);	
		String path = request.getSession().getServletContext().getRealPath("upload");	
		String fileName = file.getOriginalFilename();
		File dir = new File(path, fileName);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// MultipartFile�Դ��Ľ�������
		file.transferTo(dir);

		return topicsList(page, request);
	}
}

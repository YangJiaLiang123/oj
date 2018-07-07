package com.etc.action;

import com.etc.bean.AnswerInfo;
import com.etc.bean.Page;
import com.etc.bean.Studnet;
import com.etc.bean.Topic;
import com.etc.common.DynamicDataSourceHolder;
import com.etc.common.PageSelect;
import com.etc.inteface.Receiver;
import com.etc.service.AnswerInfoService;
import com.etc.service.StudentService;
import com.etc.service.TopicService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("user/")
public class AnswerInfoAction {
	@Resource
	private AnswerInfoService answerInfoService;
	@Resource
	private StudentService studentService;
	@Resource
	private TopicService topicService;

	@Resource
	private Receiver receiver = Receiver.getInstance();

	@SuppressWarnings("static-access")
	@PostConstruct
	public void todo(){
		receiver.answerInfoService=answerInfoService;
	}

	@RequestMapping("/answer.do")
	public @ResponseBody
	String topic(@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="limit", defaultValue="10") int limit, HttpServletResponse response) {
		//����
		response.setHeader("Access-Control-Allow-Origin", "*");
		DynamicDataSourceHolder.setDataSource("topicdataSource");
		Page pageobj = new Page();
		pageobj.setCurrentPage(page);
		pageobj = PageSelect.targetPage(pageobj,limit);
		List<AnswerInfo> Invlist = getInvListByCondition(pageobj);
		JSONArray jsonArray = new JSONArray();
		for (AnswerInfo answerInfo:Invlist){
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id",answerInfo.getId());
			jsonObject.put("user",answerInfo.getStudnet().getNickname());
			jsonObject.put("problem",answerInfo.getTopic().getTopicId());
			jsonObject.put("result",answerInfo.getSituation());
			jsonObject.put("memory",answerInfo.getMemory());
			jsonObject.put("time",answerInfo.getPresetTime());
			jsonObject.put("lang",answerInfo.getLanguage());

			jsonObject.put("subtime",answerInfo.getSubmitTime());
//			jsonObject.put("judger",answerInfo.);
			jsonArray.put(jsonObject);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("code",0);
		jsonObject.put("msg","");
		jsonObject.put("count",answerInfoService.selectAllCounts(pageobj));
		jsonObject.put("data",jsonArray);
		return jsonObject.toString();
	}

	public List<AnswerInfo> getInvListByCondition(Page page) {
		List<AnswerInfo> InvList =null;
		InvList = answerInfoService.searchInvList(page);
		return InvList;
	}
	
	@RequestMapping("insert")
	public String insertInfo(AnswerInfo answerInfo,String student_id,String question_id,HttpServletRequest request) {
		int id = Integer.parseInt(student_id);
		int id2 = Integer.parseInt(question_id);		
		Studnet studnet = studentService.selectById(id);
		if(studnet == null) {
			request.setAttribute("success", "��ѧ��������");
			return "answerInfo";
		}
		Topic topic = topicService.selectById(id2);
		if(topic == null) {
			request.setAttribute("success", "����Ŀ������");
			return "answerInfo";
		}
		answerInfo.setStudnet(studnet);
		answerInfo.setTopic(topic);
		Date day = new Date(new java.util.Date().getTime());
		answerInfo.setSubmitTime(day);
		DynamicDataSourceHolder.setDataSource("topicdataSource");
		int a = answerInfoService.insertInfo(answerInfo);
		if(a == 1) {
			request.setAttribute("success", "����ɹ�");
			return "answerInfo";
		}else {
			request.setAttribute("success", "����ʧ��");
			return "answerInfo";
		}		
	}
	
	@RequestMapping("select")
	public String selectById(String id,HttpServletRequest request) {
		int id2 = Integer.parseInt(id);
		DynamicDataSourceHolder.setDataSource("topicdataSource");
		AnswerInfo answerInfo = answerInfoService.selectByPrimaryKey(id2);
		if(answerInfo != null) {
			request.setAttribute("answerInfo", answerInfo);
			request.setAttribute("success1", "��ѯ�ɹ�");
			return "answerInfo";
		}
		request.setAttribute("success1", "��ѯʧ��");
		return "answerInfo";
	}
	
	@RequestMapping("delete")
	public String deleteById(String id,HttpServletRequest request) {
		int id2 = Integer.parseInt(id);
		DynamicDataSourceHolder.setDataSource("topicdataSource");
		int i = answerInfoService.deleteById(id2);
		if(i==1) {
			request.setAttribute("success2", "ɾ���ɹ�");
			return "answerInfo";
		}
		request.setAttribute("success2", "ɾ��ʧ��");
		return "answerInfo";
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping("selectAll")
	public String selectAll(Page page,HttpServletRequest request) {
		page = new PageSelect().targetPage(page);
		DynamicDataSourceHolder.setDataSource("topicdataSource");
        List<AnswerInfo> Invlist = answerInfoService.selectAll(page);
        Integer totalCounts = answerInfoService.selectAllCounts(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        return "/user/status";
	}
}

package com.etc.action;

import com.etc.bean.*;
import com.etc.common.DynamicDataSourceHolder;
import com.etc.common.PageSelect;
import com.etc.inteface.Send;
import com.etc.service.AnswerInfoService;
import com.etc.service.StudentService;
import com.etc.service.TopicService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/page")
public class TopicAction {

    @Resource
    private TopicService topicService;
    @Resource
    private AnswerInfoService answerInfoService;
    @Resource
    private StudentService studentService;

    //��Ŀ��ҳ
    @RequestMapping("init.do")
    public String searchInvList(Page page,String string,HttpServletRequest request){
        //��װpage����,���뷽���в�ѯ�б� ��������
        page = PageSelect.targetPage(page);
        if (page.getQueryCondition() == null && string == "") {
             page.setQueryCondition(null);//��ѯ����
        }else {
        	page.setQueryCondition(string);
        }
        List<Topic> Invlist = getInvListByCondition(page);
        Integer totalCounts = topicService.searchTotalCount(page);//������
        int totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);//��ҳ��=������/ҳ��С+1
        page.setTotalPage(totalPages);//��ҳ��
        page.setTotalRows(totalCounts);//������
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "init.do");
        return "/WebContent/user/topics";
    }
    
    //����������ȡ���ݿ����ݣ���ҳ��ʾ
    public List<Topic> getInvListByCondition(Page page) {       
        List<Topic> InvList =null;       
        if (page.getQueryCondition()==null) {            
            InvList = topicService.searchInvList(page);            
            return InvList;           
        }
         InvList = topicService.getInvBycondtion(page);        
        return InvList;       
    }

    @RequestMapping("/topic.do")
    public @ResponseBody
    String topic(@RequestParam(value="page", defaultValue="1") int page, @RequestParam(value="limit", defaultValue="10") int limit, HttpServletResponse response) {
        //����
        response.setHeader("Access-Control-Allow-Origin", "*");
        Page pageobj = new Page();
        pageobj.setCurrentPage(page);
        pageobj = PageSelect.targetPage(pageobj,limit);
        List<Topic> Invlist = getInvListByCondition(pageobj);
        JSONArray jsonArray = new JSONArray();
        for (Topic topic:Invlist){
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id",topic.getTopicId());
            jsonObject.put("title",topic.getTitle());
            jsonObject.put("difficult",topic.getDificulty());
            jsonObject.put("pass",topic.getAccepted());
            
            jsonArray.put(jsonObject);
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("code",0);
        jsonObject.put("msg","");
        jsonObject.put("count",topicService.searchTotalCount(pageobj));
        jsonObject.put("data",jsonArray);
        return jsonObject.toString();
    }

    //ɾ����Ŀ�ķ���
    @RequestMapping("isdelete.do")
    public String deleteInvition(Integer id,HttpServletRequest request) {
         topicService.deleteInvition(id);
         Page page = new Page();
         String string2 = null;
         String string = searchInvList(page,string2,request);
         return string;
    }
 
    //����id������Ŀ
    @RequestMapping("doanswer.do")
    public String selectById(int id,HttpServletRequest request) {
    	Topic topic = topicService.selectById(id);
    	request.setAttribute("topic", topic);
    	return "page/detail";
    }
    
    @RequestMapping("answer")
    public String answer(HttpServletRequest request) {
    	return "/WebContent/user/writedemo";
    }
    
    //�����ѶȲ���
    @SuppressWarnings("static-access")
	@RequestMapping("dificulty.do")
    public String selectByDificulty(Page page,int a,HttpServletRequest request) {
    	page = new PageSelect().targetPage(page);
    	String string = String.valueOf(a);
    	page.setQueryCondition(string);
        List<Topic> Invlist = topicService.selectByDificulty(page);
        Integer totalCounts = topicService.selectCount(a);
        Integer totalPages=(totalCounts%page.getPageSize()==0)?(totalCounts/page.getPageSize()):(totalCounts/page.getPageSize()+1);
        page.setTotalPage(totalPages);
        page.setTotalRows(totalCounts);
        request.setAttribute("invList", Invlist);
        request.setAttribute("page", page);
        request.setAttribute("href", "dificulty.do");
        request.setAttribute("a", a);
    	return "/WebContent/user/topics";
    }

    @RequestMapping("judgeServer.do")
    public String judgeServer(HttpServletRequest request) {
        int pid = Integer.parseInt(request.getParameter("pid"));
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdf.format(date);
        String src = request.getParameter("src");
        int language = Integer.parseInt(request.getParameter("language"));
        JSONObject language_config = null;
        String lang = "";
        switch (language){
            case 0:
                language_config = new JSONObject(Language_config.java_l_c);
                lang = "java";
                break;
            case 1:
                language_config = new JSONObject(Language_config.c_l_c);
                lang = "c";
                break;
            case 2:
                language_config = new JSONObject(Language_config.cpp_l_c);
                lang = "c++";
                break;
            default:
                break;
        };
        Topic topic = topicService.selectById(pid);
        int max_cpu_time = topic.getTimeLimit();
        long max_memory = topic.getMemoryLimit();

        @SuppressWarnings("unused")
		boolean output = true;
//        boolean isSPJ = Boolean.valueOf(request.getParameter("isSPJ"));
//        int test_case_id = Integer.parseInt(request.getParameter("test_case_id"));

        JSONObject data=new JSONObject();
        data.put("src",src);
        data.put("language_config",language_config);
        data.put("max_cpu_time",max_cpu_time);
        data.put("max_memory",max_memory);

        data.put("output",true);
//        data.put("isSPJ",false);
        data.put("pid",pid);

        AnswerInfo answerInfo = new AnswerInfo();
        HttpSession session=request.getSession();
        answerInfo.setStudnet(studentService.selectById((Integer) session.getAttribute("login_id")));
        answerInfo.setTopic(topicService.selectById(pid));
        answerInfo.setSituation(-2+"");
        answerInfo.setMemory(Long.valueOf(-1));
        answerInfo.setPresetTime(-1);
        answerInfo.setLanguage(lang);
        answerInfo.setSubmitTime(date);


        DynamicDataSourceHolder.setDataSource("topicdataSource");
        answerInfoService.insertInfo(answerInfo);
        data.put("id",answerInfo.getId());

        Send.send(Send.QUEUE_QUE,data.toString());

        return "/WebContent/user/wait4anwser";
    }
}
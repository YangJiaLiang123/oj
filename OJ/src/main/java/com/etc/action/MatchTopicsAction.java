package com.etc.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.Match;
import com.etc.bean.MatchTopics;
import com.etc.bean.Topic;
import com.etc.service.MatchService;
import com.etc.service.MatchTopicsService;
import com.etc.service.TopicService;

@Controller
@RequestMapping
public class MatchTopicsAction {
	
	@Resource
	private MatchTopicsService matchTopicsService;
	@Resource
	private TopicService topicService;
	@Resource
	private MatchService matchService;
	
	@RequestMapping
	public String addMatchTopic(Integer id,String string,HttpServletRequest request) {
		Match match = matchService.selectByPrimaryKey(id);
		int num = match.getNumber();
		String str[] = string.split(",");
		if(str.length == num) {
			for(int i=0;i<num;i++) {
				int a = Integer.parseInt(str[i]);
				Topic topic = topicService.selectById(a);
				MatchTopics matchTopics = new MatchTopics();
				matchTopics.setMatch(match);
				matchTopics.setTopic(topic);
				matchTopicsService.insert(matchTopics);
			}	
			return "success";
		}
		return "题目数目和比赛题目数目不正确";
	}
	
	@RequestMapping
	public String deleteMatchTopic(Integer id,HttpServletRequest request) {
		matchTopicsService.deleteByPrimaryKey(id);
		return null;
	}
	
	@RequestMapping
	public String selectMatchTopic(Integer id,HttpServletRequest request) {
		 MatchTopics matchTopics = matchTopicsService.selectByPrimaryKey(id);
		 request.setAttribute("matchTopics", matchTopics);
		 return null;
	}
	
	
}

package com.etc.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etc.bean.IcpcMatch;
import com.etc.bean.Studnet;
import com.etc.service.IcpcMatchService;
import com.etc.service.MatchService;
import com.etc.service.StudentService;

@Controller
@RequestMapping
public class IcpcMatchAction {

	@Resource
    private IcpcMatchService icpcMatchService;
	@Resource
	private MatchService matchService;
	@Resource
	private StudentService studentService;
	
	@RequestMapping
	public String addIcpcMatch(Integer id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String string = (String) session.getAttribute("username");
		Studnet studnet = studentService.selectByName(string);
		IcpcMatch icpcMatch = new IcpcMatch();
		icpcMatch.setMatchId(id);
		icpcMatch.setTopicId(0);
		icpcMatch.setStudentId(studnet.getId());
		return "";
	}
}

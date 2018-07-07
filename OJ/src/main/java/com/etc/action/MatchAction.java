package com.etc.action;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.etc.bean.Match;
import com.etc.service.MatchService;

@Controller
@RequestMapping
public class MatchAction {

	@Resource
	private MatchService matchService;
		
	@RequestMapping
	public String addMatch(Match match,HttpServletRequest request) {
		Date day = new Date(new java.util.Date().getTime());
		match.setSubmitTime(day);
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
        md.update(match.getPassword().getBytes());
        String md5=new BigInteger(1, md.digest()).toString(16);
        md5 = md5.length()==32?md5:("0"+md5);
        match.setPassword(md5);
		matchService.insert(match);
		return null;
	}
	
	@RequestMapping
	public String deleteMatch(Integer id,HttpServletRequest request) {
		matchService.deleteByPrimaryKey(id);
		return null;
	}
	
	@RequestMapping
	public String updateMatch(Integer id,Match match,HttpServletRequest request) {
		matchService.updateByPrimaryKeySelective(match);
		return null;
	}
	
	@RequestMapping
	public String selectMatch(Integer id,HttpServletRequest request) {
		Match match = matchService.selectByPrimaryKey(id);
		request.setAttribute("match", match);
		return null;
	}
	
}

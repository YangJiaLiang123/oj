package com.etc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bean.Match;
import com.etc.dao.MatchDao;

@Service
public class MatchService{
	
	@Resource
	private MatchDao matchDao;

	public int deleteByPrimaryKey(Integer id) {		
		return matchDao.deleteByPrimaryKey(id);
	}

	public int insert(Match record) {
		return matchDao.insert(record);
	}

	public int insertSelective(Match record) {
		return matchDao.insertSelective(record);
	}

	public Match selectByPrimaryKey(Integer id) {
		return matchDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Match record) {
		return matchDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Match record) {
		return matchDao.updateByPrimaryKey(record);
	}
	
}

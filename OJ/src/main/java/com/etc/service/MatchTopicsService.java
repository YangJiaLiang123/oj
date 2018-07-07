package com.etc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bean.MatchTopics;
import com.etc.dao.MatchTopicsDao;

@Service
public class MatchTopicsService{
	
	@Resource
	private MatchTopicsDao matchTopicsDao;

	public int deleteByPrimaryKey(Integer id) {
		return matchTopicsDao.deleteByPrimaryKey(id);
	}

	public int insert(MatchTopics record) {
		return matchTopicsDao.insert(record);
	}

	public int insertSelective(MatchTopics record) {
		return matchTopicsDao.insertSelective(record);
	}

	public MatchTopics selectByPrimaryKey(Integer id) {
		return matchTopicsDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(MatchTopics record) {
		return matchTopicsDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(MatchTopics record) {
		return matchTopicsDao.updateByPrimaryKey(record);
	}

}

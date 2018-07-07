package com.etc.service;

import com.etc.bean.AnswerInfo;
import com.etc.bean.Page;
import com.etc.dao.AnswerInfoDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AnswerInfoService {
	
	@Resource
	private AnswerInfoDao answerInfoDao;

	public List<AnswerInfo> searchInvList(Page page) {
		return answerInfoDao.searchInvList(page);
	}

	public int insertInfo(AnswerInfo answerInfo) {		
		return answerInfoDao.insert(answerInfo);
	}
	
	public AnswerInfo selectByPrimaryKey(int id) {
		return answerInfoDao.selectByPrimaryKey(id);
	}
	
	public int deleteById(int id) {
		return answerInfoDao.deleteByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(AnswerInfo record) {
		return answerInfoDao.updateByPrimaryKeySelective(record);
	}

    public int updateByPrimaryKey(AnswerInfo record) {
    	return answerInfoDao.updateByPrimaryKey(record);
    }
    
    public List<AnswerInfo> selectAll(Page page){
    	return answerInfoDao.selectAll(page);
    }
    
    public int selectAllCounts(Page page) {
    	return answerInfoDao.selectAllCounts(page);
    }
}

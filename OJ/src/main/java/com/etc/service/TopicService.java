package com.etc.service;

import com.etc.bean.Page;
import com.etc.bean.Topic;
import com.etc.dao.TopicDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TopicService{

	@Resource
	private TopicDao topicDao;
	
	public List<Topic> searchInvList(Page page) {
		return topicDao.searchInvList(page);
	}

	public List<Topic> getInvBycondtion(Page page) {
		return topicDao.getInvBycondtion(page);
	}

	public Integer searchTotalCount(Page page) {
		return topicDao.searchTotalCount(page);
	}

	public Integer deleteInvition(Integer id) {
		return topicDao.deleteInvition(id);
	}

	public int updateByPrimaryKeySelective(Topic record) {
		return topicDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Topic record) {
		return topicDao.updateByPrimaryKey(record);
	}

	public Topic selectById(int id) {
		return topicDao.selectById(id);
	}
	
	public List<Topic> selectByDificulty(Page page){
		return topicDao.selectByDificulty(page);
	}
	
	public Integer selectCount(Integer a){
		
		return topicDao.selectCount(a);
	}

	public Integer selectCount(){

		return topicDao.selectAllCount();
	}
	
	public Integer insert(Topic record) {
		return topicDao.insert(record);
	}

    public Integer insertSelective(Topic record) {
    	return topicDao.insertSelective(record);
    }
    
}

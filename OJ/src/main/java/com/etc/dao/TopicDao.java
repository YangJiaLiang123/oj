package com.etc.dao;

import com.etc.bean.Page;
import com.etc.bean.Topic;

import java.util.List;

public interface TopicDao {
	
	public List<Topic>  searchInvList(Page page);//��ѯ��Ŀ�б�
    
    public List<Topic> getInvBycondtion(Page page);//����������ѯ��Ŀ�б�
    
    public Integer searchTotalCount(Page page);//��Ŀ������
    
    public Integer deleteInvition(Integer id);//����idɾ����Ŀ
    
    public int updateByPrimaryKeySelective(Topic record);

    public int updateByPrimaryKey(Topic record);
    
    public Topic selectById(int id);
    
    public List<Topic> selectByDificulty(Page page);
    
    public Integer selectCount(Integer a);

    public Integer selectAllCount();
    
    public int insert(Topic record);

    public int insertSelective(Topic record);
    
    
    
}
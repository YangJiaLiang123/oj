package com.etc.dao;

import com.etc.bean.AnswerInfo;
import com.etc.bean.Page;

import java.util.List;

public interface AnswerInfoDao {

    public List<AnswerInfo>  searchInvList(Page page);//��ѯ��Ŀ�б�

    int deleteByPrimaryKey(Integer id);

    int insert(AnswerInfo record);

    int insertSelective(AnswerInfo record);

    AnswerInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AnswerInfo record);

    int updateByPrimaryKey(AnswerInfo record);
    
    AnswerInfo selectByPrimaryKey(int id);
    
    public List<AnswerInfo> selectAll(Page page);
    
    public int selectAllCounts(Page page);
}
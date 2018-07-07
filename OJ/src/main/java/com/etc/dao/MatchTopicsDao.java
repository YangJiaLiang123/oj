package com.etc.dao;

import com.etc.bean.MatchTopics;

public interface MatchTopicsDao {
    int deleteByPrimaryKey(Integer id);

    int insert(MatchTopics record);

    int insertSelective(MatchTopics record);

    MatchTopics selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MatchTopics record);

    int updateByPrimaryKey(MatchTopics record);
}
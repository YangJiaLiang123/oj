package com.etc.dao;

import com.etc.bean.Match;

public interface MatchDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Match record);

    int insertSelective(Match record);

    Match selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Match record);

    int updateByPrimaryKey(Match record);
}
package com.etc.dao;

import com.etc.bean.IcpcMatch;

public interface IcpcMatchDao {
    int deleteByPrimaryKey(Integer id);

    int insert(IcpcMatch record);

    int insertSelective(IcpcMatch record);

    IcpcMatch selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(IcpcMatch record);

    int updateByPrimaryKey(IcpcMatch record);
}
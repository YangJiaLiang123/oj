package com.etc.dao;

import com.etc.bean.superAdmin;

public interface superAdminDao {
    int deleteByPrimaryKey(Integer id);

    int insert(superAdmin record);

    int insertSelective(superAdmin record);

    superAdmin selectByPrimaryKey(superAdmin record);

    int updateByPrimaryKeySelective(superAdmin record);

    int updateByPrimaryKey(superAdmin record);
    
}
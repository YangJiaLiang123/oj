package com.etc.dao;

import com.etc.bean.Admin;
import com.etc.bean.Page;

import java.util.List;

public interface AdminDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin select(Admin record);

    int selectAdminCounts();

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin selectByName(String record);
    
    Admin selectById(Integer id);
    
    int updatePassword(Admin admin);
    
    List<Admin> selectAll(Page page);
    
    Integer selectAllCounts(Page page);
    
    List<Admin> selectSome(Page page);
}
package com.etc.dao;

import com.etc.bean.Page;
import com.etc.bean.Studnet;

import java.util.List;

public interface StudnetDao {
	
    public List<Studnet> selectAll(Page page);
    
    public List<Studnet> selectSome(Page page);
    
    public Integer selectAllCounts(Page page); 
    
    public Integer selectSomeCounts(Page page);

    public Integer selectStudentCounts();

    public Integer selectTeacherCounts();
	
    int deleteByPrimaryKey(Integer id);

    int insert(Studnet record);

    int insertSelective(Studnet record);

    Studnet select(Studnet record);

    //前者只是更新新的model中不为空的字段。

    int updateSelective(Studnet record);

  //后者则会将为空的字段在数据库中置为NULL。
    int update(Studnet record);
    
    Studnet selectByName(String name);
    
    Studnet selectByNickName(String nickname);
    
    Studnet selectByEmail(String email);
    
    Studnet selectByTelephone(String telephone);
    
    Studnet selectById(int id);
}
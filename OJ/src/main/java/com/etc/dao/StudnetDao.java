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

    //ǰ��ֻ�Ǹ����µ�model�в�Ϊ�յ��ֶΡ�

    int updateSelective(Studnet record);

  //������ὫΪ�յ��ֶ������ݿ�����ΪNULL��
    int update(Studnet record);
    
    Studnet selectByName(String name);
    
    Studnet selectByNickName(String nickname);
    
    Studnet selectByEmail(String email);
    
    Studnet selectByTelephone(String telephone);
    
    Studnet selectById(int id);
}
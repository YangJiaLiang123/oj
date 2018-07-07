package com.etc.service;

import com.etc.bean.Page;
import com.etc.bean.Studnet;
import com.etc.common.Check;
import com.etc.dao.StudnetDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service  
public class StudentService{  
    @Resource  
    private StudnetDao studnetDao;

	public int deleteByPrimaryKey(Integer id) {
		studnetDao.deleteByPrimaryKey(id);
		return 0;
	}

	public int insert(Studnet record) {
		int i = studnetDao.insert(record);
		return i;
		
	}

	public int insertSelective(Studnet record) {
		int i = studnetDao.insertSelective(record);
		return i;
	}
	
	public Studnet select(Studnet record) {
		return studnetDao.select(record);
	}

	public int updateSelective(Studnet record) {
		return studnetDao.updateSelective(record);
	}

	public int update(Studnet record) {
		return studnetDao.update(record);
		
	}  
    public Studnet selectByName(String name) {
    	Studnet studnet = studnetDao.selectByName(name);
    	return studnet;	
    } 
    public boolean checkEmail(String email) {
    	boolean result = Check.checkEmail(email);
    	return result;
    }
    public boolean checkTelephone(String telephone) {
		boolean result = Check.checkMobileNumber(telephone);
		return result;
	}
    public boolean checkPassword(String password) {
		boolean result = Check.checkPassword(password);
		return result;
	}
    public Studnet selectByNickName(String nickname) {
    	Studnet studnet = studnetDao.selectByNickName(nickname);
    	return studnet;
    }
    public Studnet selectByEmail(String email) {
    	Studnet studnet = studnetDao.selectByEmail(email);
    	return studnet;
    }
    public Studnet selectByTelephone(String telephone) {
    	Studnet studnet = studnetDao.selectByTelephone(telephone);
    	return studnet;
    }
    public Studnet selectById(int id) {
    	return studnetDao.selectById(id);
    }
    
    public List<Studnet> selectAll(Page page) {
		return studnetDao.selectAll(page);
	}

	public List<Studnet> selectSome(Page page) {
		return studnetDao.selectSome(page);
	}

	public Integer selectAllCounts(Page page) {
		return studnetDao.selectAllCounts(page);
	}
	
	public Integer selectSomeCounts(Page page) {
		return studnetDao.selectSomeCounts(page);
	}

	public Integer selectStudentCounts() {
		return studnetDao.selectStudentCounts();
	}

	public Integer selectTeacherCounts() {
		return studnetDao.selectTeacherCounts();
	}
} 

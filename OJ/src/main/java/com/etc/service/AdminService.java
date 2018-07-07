package com.etc.service;

import com.etc.bean.Admin;
import com.etc.bean.Page;
import com.etc.dao.AdminDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service  
public class AdminService{
	
	@Resource
	private AdminDao adminDao;

	public int deleteByPrimaryKey(Integer id) {		
		int i = adminDao.deleteByPrimaryKey(id);
		return i;
	}

	public int insert(Admin record) {
		int i = adminDao.insert(record);
		return i;
	}

	public int insertSelective(Admin record) {
		int i = adminDao.insertSelective(record);
		return i;
	}

	public Admin select(Admin record) {
		Admin admin = adminDao.select(record);
		return admin;
	}

	public int selectAdminCounts() {
		return adminDao.selectAdminCounts();
	}

	public Admin selectById(Integer id) {
		Admin admin = adminDao.selectById(id);
		return admin;
	}
	
	public int updateByPrimaryKeySelective(Admin record) {
		return adminDao.updateByPrimaryKeySelective(record);
	
	}

	public int updateByPrimaryKey(Admin record) {
		return adminDao.updateByPrimaryKey(record);
		
	}

	public Admin selectByName(String record) {
		Admin admin = adminDao.selectByName(record);
		return admin;
	}

	public int updatePassword(Admin admin) {
		return adminDao.updatePassword(admin);
	}
	
	public List<Admin> selectAll(Page page){
	    return adminDao.selectAll(page);
    }
    
    public int selectAllCounts(Page page) {
    	return adminDao.selectAllCounts(page);
    }
    
    public List<Admin> selectSome(Page page){
    	return adminDao.selectSome(page);
    }
}

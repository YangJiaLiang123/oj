package com.etc.service;

import com.etc.bean.superAdmin;
import com.etc.dao.AdminDao;
import com.etc.dao.superAdminDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class superAdminService{

	@Resource
	private superAdminDao superAdminDao;
	@Resource
	private AdminDao adminDao;
	
	public int deleteByPrimaryKey(Integer id) {	
		int i = superAdminDao.deleteByPrimaryKey(id);
		return i;
	}

	public int insert(superAdmin record) {	
		int i = superAdminDao.insert(record);
		return i;
	}

	public int insertSelective(superAdmin record) {		
		int i = superAdminDao.insertSelective(record);
		return i;
	}

	public superAdmin selectByPrimaryKey(superAdmin record) {		
		superAdmin superAdmin = superAdminDao.selectByPrimaryKey(record);
		return superAdmin;
	}

	public int updateByPrimaryKeySelective(superAdmin record) {		
		int i = superAdminDao.updateByPrimaryKeySelective(record);
		return i;
	}

	public int updateByPrimaryKey(superAdmin record) {
		int i = superAdminDao.updateByPrimaryKey(record);
		return i;
	}

}

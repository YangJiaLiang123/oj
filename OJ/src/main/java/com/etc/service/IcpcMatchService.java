package com.etc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bean.IcpcMatch;
import com.etc.dao.IcpcMatchDao;

@Service
public class IcpcMatchService{
	
	@Resource
	private IcpcMatchDao icpcMatchDao;

	public int deleteByPrimaryKey(Integer id) {
		return icpcMatchDao.deleteByPrimaryKey(id);
	}

	public int insert(IcpcMatch record) {
		return icpcMatchDao.insert(record);
	}

	public int insertSelective(IcpcMatch record) {
		icpcMatchDao.insertSelective(record);
		return 0;
	}

	public IcpcMatch selectByPrimaryKey(Integer id) {
		return icpcMatchDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(IcpcMatch record) {
		return icpcMatchDao.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(IcpcMatch record) {
		return icpcMatchDao.updateByPrimaryKey(record);
	}

}

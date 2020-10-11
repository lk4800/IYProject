package com.lifetheater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifetheater.dao.GugunDAO;
import com.lifetheater.vo.GugunVO;

@Service
public class GugunServiceImpl implements GugunService {

	@Autowired
	private GugunDAO gugunDao;
	
	
	@Override
	public List<GugunVO> getGugun(int sido_code) {
		
		return this.gugunDao.getGugun(sido_code);
	}

	
	

	
	
}

package com.lifetheater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifetheater.dao.BasicTheaterDAO;
import com.lifetheater.vo.BasicTheaterVO;

@Service
public class BasicTheaterServiceImpl implements BasicTheaterService {

	@Autowired
	private BasicTheaterDAO basicTheaterDAO;

	@Override
	public void basictheaterInsert(BasicTheaterVO basictheaterVO) {
		this.basicTheaterDAO.theaterDInsert(basictheaterVO);
	}

	@Override
	public BasicTheaterDAO basictheaterCont(int td_num) {
		return this.basicTheaterDAO.theaterDCont(td_num);
	}

	@Override
	public void basictheaterUpdate(BasicTheaterVO basictheaterVO) {
		this.basicTheaterDAO.theaterDUpdate(basictheaterVO);
	}

	@Override
	public void basictheaterDelete(BasicTheaterVO basictheaterVO) {
		this.basicTheaterDAO.theaterDDelete(basictheaterVO);
	}

	@Override
	public List<BasicTheaterVO> getDlist(BasicTheaterVO basictheaterVO) {
		return this.basicTheaterDAO.getDlist(basictheaterVO);
	}

	@Override
	public void basictheaterImgInsert(BasicTheaterVO basicTheaterVO) {
		this.basicTheaterDAO.theaterDInsert(basicTheaterVO);
	}
	
}

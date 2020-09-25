package com.lifetheater.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lifetheater.vo.GugunVO;

@Service
public interface GugunService {

	List<GugunVO> getGugun(int sido_code);

}

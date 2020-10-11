package com.lifetheater.service;

import java.util.List;

import com.lifetheater.dao.BasicTheaterDAO;
import com.lifetheater.vo.BasicTheaterVO;


public interface BasicTheaterService {

	void basictheaterInsert(BasicTheaterVO basictheaterVO); //이미지 있는 게시판 등록

	void basictheaterImgInsert(BasicTheaterVO basicTheaterVO); //이미지 삽입
	
	BasicTheaterDAO basictheaterCont(int td_num); //시퀀스 번호 기준으로 내용 가져오기
	
	void basictheaterUpdate(BasicTheaterVO basictheaterVO); //게시물 수정

	void basictheaterDelete(BasicTheaterVO basictheaterVO); //게시물 삭제
	
	List<BasicTheaterVO> getDlist(BasicTheaterVO basictheaterVO); // 게시물 list로 넘길때 사용
	
	
	
}

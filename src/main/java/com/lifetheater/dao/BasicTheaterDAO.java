package com.lifetheater.dao;

import java.util.List;

import com.lifetheater.vo.BasicTheaterVO;

public interface BasicTheaterDAO {

	void theaterDInsert(BasicTheaterVO theaterVO); //이미지 있는 게시판 등록
	
	void theaterImgInsert(BasicTheaterVO theaterVO);
	
	BasicTheaterDAO theaterDCont(int td_num); //시퀀스 번호 기준으로 내용 가져오기
	
	void theaterDUpdate(BasicTheaterVO theaterVO); //게시물 수정

	void theaterDDelete(BasicTheaterVO theaterVO); //게시물 삭제
	
	public List<BasicTheaterVO> getDlist(BasicTheaterVO theaterboard); // 게시물 list로 넘길때 사용
	
}

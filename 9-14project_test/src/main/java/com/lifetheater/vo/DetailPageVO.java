package com.lifetheater.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DetailPageVO {

	private String dp_title; //연극 제목
	private String dp_viewdays; //상영시작날짜~종료날짜
	private String dp_agegrade; //12세~19세등.
	private String dp_runtime; //상영시간 
	private String dp_actor; //출연진
	private String dp_stgrade1; //예매하기 등급 ex R석,S석,자유석
	private String dp_stgrade2;
	private String dp_stgrade3;
	private String dp_stgrade4;
	private int dp_stprice1; //예매 가격
	private int dp_stprice2;
	private int dp_stprice3;
	private int dp_stprice4;
	private String dp_mainposter; //메인 포스터
	private String dp_detailposter; //섬머노트 내용+이미지
	private String dp_tiketingdate; //달력날짜
	private String dp_tiketingtime; //공연시간선택(1회 13:00)
	private String dp_check; //게시글 승인 확인 // 등급 0 // 취소 1 // 대기 2 확인
}

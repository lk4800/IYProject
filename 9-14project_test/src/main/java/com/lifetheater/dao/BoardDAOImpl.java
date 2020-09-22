package com.lifetheater.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.NBoardVO;
import com.lifetheater.vo.PBoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void fBoardInsert(FBoardVO fBoardVO) {
		System.out.println("중간 확인 : "+fBoardVO.getEmail());
		System.out.println("중간 확인 : "+fBoardVO.getFb_title());
		System.out.println("중간 확인 : "+fBoardVO.getFb_cont());
		System.out.println("중간 확인 : "+fBoardVO.getFb_img_url());
		this.sqlSession.insert("fb_insert",fBoardVO);
	}


	@Override
	public void pBoardInsert(PBoardVO pBoardVO) {
		this.sqlSession.insert("pb_insert",pBoardVO);
		
	}


	@Override
	public void nBoardInsert(NBoardVO nBoardVO) {
		this.sqlSession.insert("nb_insert",nBoardVO);
		
	}
	
	@Override
	public void fBoardNoImgInsert(FBoardVO fBoardVO) {
		this.sqlSession.insert("fb_noImgInsert",fBoardVO);
		
	}
	
	@Override
	public void pBoardNoImgInsert(PBoardVO pBoardVO) {
		this.sqlSession.insert("pb_noImgInsert",pBoardVO);
		
	}
	@Override
	public void nBoardNoImgInsert(NBoardVO nBoardVO) {
		this.sqlSession.insert("nb_noImgInsert",nBoardVO);
		
	}


	@Override
	public FBoardVO selectFBCont(int fb_num) {
		return this.sqlSession.selectOne("selectFBCont", fb_num);
	}
}

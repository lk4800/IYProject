package com.lifetheater.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lifetheater.vo.FBoardContVO;
import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.FRepContVO;
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
	public FBoardContVO selectFBCont(int fb_num) {
		return this.sqlSession.selectOne("selectFBCont", fb_num);
	}


	@Override
	public void fHitUp(int fb_num) {
		this.sqlSession.update("fbHitUp", fb_num);
	}


	@Override
	public FBoardVO selectCont(int fb_num) {
		return this.sqlSession.selectOne("selectCont", fb_num);
	}


	@Override
	public void fBoardUpdate(FBoardVO fBoardVO) {
		this.sqlSession.update("fb_update", fBoardVO);
		
	}


	@Override
	public void pBoardNoUpdate(FBoardVO fBoardVO) {
		this.sqlSession.update("fb_NoImgupdate", fBoardVO);
		
	}
	

	@Override
	public List<FBoardVO> getflist(FBoardVO fboard) {
		return this.sqlSession.selectList("getflist",fboard);
	}


	@Override
	public List<PBoardVO> getplist(PBoardVO pboard) {
		return this.sqlSession.selectList("getplist",pboard);
	}


	@Override
	public List<NBoardVO> getnlist(NBoardVO nboard) {
		return this.sqlSession.selectList("getnlist",nboard);
	}


	@Override
	public String getusername(String email) {
		return this.sqlSession.selectOne("getusername", email);
	}


	@Override
	public int getFTotalCount(FBoardVO fboard) {
		return this.sqlSession.selectOne("F_count",fboard);
	}


	@Override
	public int getPTotalCount(PBoardVO pboard) {
		return this.sqlSession.selectOne("P_count",pboard);
	}


	@Override
	public int getNTotalCount(NBoardVO nboard) {
		return this.sqlSession.selectOne("N_count",nboard);
	}
	
	@Override
	public void fBoardDelete(FBoardVO fBoardVO) {
		this.sqlSession.delete("fBoardDelete", fBoardVO);
	}


	@Override
	public void pBoardDelete(PBoardVO pBoardVO) {
		this.sqlSession.delete("pBoardDelete", pBoardVO);
	}


	@Override
	public void nBoardDelete(NBoardVO nBoardVO) {
		this.sqlSession.delete("nBoardDelete", nBoardVO);
	}



}

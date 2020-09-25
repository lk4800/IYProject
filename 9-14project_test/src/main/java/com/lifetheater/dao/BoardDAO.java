package com.lifetheater.dao;

import java.util.List;

import com.lifetheater.vo.FBoardContVO;
import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.NBoardVO;
import com.lifetheater.vo.PBoardVO;

public interface BoardDAO {


	void fBoardInsert(FBoardVO fBoardVO);

	void fBoardNoImgInsert(FBoardVO fBoardVO);

	void pBoardNoImgInsert(PBoardVO pBoardVO);

	void pBoardInsert(PBoardVO pBoardVO);

	void nBoardNoImgInsert(NBoardVO nBoardVO);

	void nBoardInsert(NBoardVO nBoardVO);

	FBoardContVO selectFBCont(int fb_num);

	void fHitUp(int fb_num);

	FBoardVO selectCont(int fb_num);

	void fBoardUpdate(FBoardVO fBoardVO);

	void pBoardNoUpdate(FBoardVO fBoardVO);
	
	public List<FBoardVO> getflist(FBoardVO fboard);
	
	public List<PBoardVO> getplist(PBoardVO pboard);
	
	public List<NBoardVO> getnlist(NBoardVO nboard);
	
	int getFTotalCount(FBoardVO fboard);
	
	int getPTotalCount(PBoardVO pboard);
	
	int getNTotalCount(NBoardVO nboard);
	
	public String getusername(String email);
	

	//게시물 삭제
	
	void fBoardDelete(FBoardVO fBoardVO);
	
	void pBoardDelete(PBoardVO pBoardVO);
	
	void nBoardDelete(NBoardVO nBoardVO);
	
}

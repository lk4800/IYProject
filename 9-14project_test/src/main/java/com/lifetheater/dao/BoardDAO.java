package com.lifetheater.dao;

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
}

package com.lifetheater.service;

import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.NBoardVO;
import com.lifetheater.vo.PBoardVO;

public interface BoardService{


	void fBoardInsert(FBoardVO fBoardVO);

	void pBoardInsert(PBoardVO pBoardVO);

	void nBoardInsert(NBoardVO nBoardVO);

}

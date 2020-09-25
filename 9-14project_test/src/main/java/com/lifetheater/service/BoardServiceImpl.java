package com.lifetheater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifetheater.dao.BoardDAO;
import com.lifetheater.vo.FBoardContVO;
import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.NBoardVO;
import com.lifetheater.vo.PBoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO BoardDao;
	

	@Override
	public void fBoardInsert(FBoardVO fBoardVO) {
		if(fBoardVO.getFb_img_url() == null)
			this.BoardDao.fBoardNoImgInsert(fBoardVO);
		else 
			this.BoardDao.fBoardInsert(fBoardVO);
	}

	@Override
	public void pBoardInsert(PBoardVO pBoardVO) {
		if(pBoardVO.getPb_img_url() == null)
			this.BoardDao.pBoardNoImgInsert(pBoardVO);
		else 
			this.BoardDao.pBoardInsert(pBoardVO);
	}

	@Override
	public void nBoardInsert(NBoardVO nBoardVO) {
		if(nBoardVO.getNb_img_url() == null)
			this.BoardDao.nBoardNoImgInsert(nBoardVO);
		else 
			this.BoardDao.nBoardInsert(nBoardVO);
		
	}

	@Override
	public FBoardContVO selectFBCont(int fb_num) {
		return this.BoardDao.selectFBCont(fb_num);
	}

	@Override
	public void fHitUp(int fb_num) {
		this.BoardDao.fHitUp(fb_num);
		
	}

	@Override
	public FBoardVO selectCont(int fb_num) {
		return this.BoardDao.selectCont(fb_num);
	}

	@Override
	public void fBoardUpdate(FBoardVO fBoardVO) {
		
		if(fBoardVO.getFb_img_url() == null)
			this.BoardDao.pBoardNoUpdate(fBoardVO);
		else 
			this.BoardDao.fBoardUpdate(fBoardVO);
	}
	
	
	@Override
	public List<FBoardVO> getflist(FBoardVO fboard) {
		return this.BoardDao.getflist(fboard);
	}

	@Override
	public List<PBoardVO> getplist(PBoardVO pboard) {
		return this.BoardDao.getplist(pboard);
	}

	@Override
	public List<NBoardVO> getnlist(NBoardVO nboard) {
		return this.BoardDao.getnlist(nboard);
	}

	@Override
	public String getusername(String email) {
		return this.BoardDao.getusername(email);
	}

	@Override
	public int getFTotalCount(FBoardVO fboard) {
		return this.BoardDao.getFTotalCount(fboard);
	}

	@Override
	public int getPTotalCount(PBoardVO pboard) {
		return this.BoardDao.getPTotalCount(pboard);
	}

	@Override
	public int getNTotalCount(NBoardVO nboard) {
		return this.BoardDao.getNTotalCount(nboard);
	}
	
	@Override
	public void fBoardDelete(FBoardVO fBoardVO) {
		this.BoardDao.fBoardDelete(fBoardVO);
	}

	@Override
	public void pBoardDelete(PBoardVO pBoardVO) {
		this.BoardDao.pBoardDelete(pBoardVO);
	}

	@Override
	public void nBoardDelete(NBoardVO nBoardVO) {
		this.BoardDao.nBoardDelete(nBoardVO);
	}
	
	
}

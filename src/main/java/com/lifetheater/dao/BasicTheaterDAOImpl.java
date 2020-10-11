package com.lifetheater.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lifetheater.vo.BasicTheaterVO;


@Repository
public class BasicTheaterDAOImpl implements BasicTheaterDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void theaterDInsert(BasicTheaterVO theaterVO) {
		this.sqlSession.insert("tdvo_insert", theaterVO);
	}

	@Override
	public void theaterImgInsert(BasicTheaterVO theaterVO) {
		this.sqlSession.insert("tdvo_ImgInsert", theaterVO);
	}

	@Override
	public BasicTheaterDAO theaterDCont(int td_num) {
		return this.sqlSession.selectOne("selectTDCONT", td_num);
	}

	@Override
	public void theaterDUpdate(BasicTheaterVO theaterVO) {
		this.sqlSession.update("tdvo_Update", theaterVO);
	}

	@Override
	public void theaterDDelete(BasicTheaterVO theaterVO) {
		this.sqlSession.delete("tdvo_delete", theaterVO);
	}

	@Override
	public List<BasicTheaterVO> getDlist(BasicTheaterVO theaterboard) {
		return this.sqlSession.selectList("gettdlist", theaterboard);
	}



}
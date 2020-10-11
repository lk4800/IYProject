package com.lifetheater.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lifetheater.vo.GugunVO;

@Service
public class GugunDAOImpl implements GugunDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<GugunVO> getGugun(int sido_code) {
		
		//return this.sqlSession.selectOne("glist", sido_code);
		return this.sqlSession.selectList("glist", sido_code);
	}
	
	

	
	

}

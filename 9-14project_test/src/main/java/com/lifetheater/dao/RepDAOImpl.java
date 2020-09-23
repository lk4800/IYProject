package com.lifetheater.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lifetheater.vo.FRepContVO;
import com.lifetheater.vo.FReplyVO;

@Repository
public class RepDAOImpl implements RepDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void repInsert(FReplyVO re) {
		System.out.println("중간 확인 "+re.getEmail()+", "+re.getFb_reply_cont()+", "+re.getFboard_num());
		this.sqlSession.insert("rep_insert",re);
	}

	@Override
	public List<FRepContVO> selectFreCont(int fb_num) {
		return this.sqlSession.selectList("select_fre_cont",fb_num);
	}

	@Override
	public int totalRep(int fb_num) {
		return this.sqlSession.selectOne("totalRep", fb_num);
	}
	
	
	
}

package com.lifetheater.dao;

import java.util.List;

import com.lifetheater.vo.FRepContVO;
import com.lifetheater.vo.FReplyVO;

public interface RepDAO {

	void repInsert(FReplyVO re);

	List<FRepContVO> selectFreCont(int fb_num);

	int totalRep(int fb_num);

	void rep_repInsert(FReplyVO re);
	
	void fReplyDelete(FRepContVO freply);

}

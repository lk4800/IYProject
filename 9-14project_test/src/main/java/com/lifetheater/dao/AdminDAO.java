package com.lifetheater.dao;

import java.util.List;

import com.lifetheater.vo.TheaterDListVO;
import com.lifetheater.vo.UserListVO;

public interface AdminDAO {

	int getTotalCout(UserListVO userListVO);

	List<UserListVO> getUserList(UserListVO userListVO);

	void general_memberCh(UserListVO user);

	void show_memberCh(UserListVO user);

	int getTotalTheaterCount(TheaterDListVO tdlvo);

	List<TheaterDListVO> getTheaterList(TheaterDListVO tdlvo);

	void tdCancle(int td_no);

	void tdApprove(int td_no);

}

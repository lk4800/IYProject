package com.lifetheater.vo;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class UserVO {
	private String email;
	private String pw;
	private String name;
	private String regDate;
	private Integer point;
	private String userKey;
	private String membertype;
	private String phone;
	private String loginWay;
	private String prefTheater01;
	private String prefTheater02;
	private String prefTheater03;
	private Boolean autologin;
	private Boolean loginsave;
}


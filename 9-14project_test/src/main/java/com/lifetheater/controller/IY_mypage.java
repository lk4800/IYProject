package com.lifetheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IY_mypage {

	@GetMapping("IY_mypage_edit_user")
	public String mypage_edit_user() {
		return "mypage/mypage_edit_user";
	}
	@GetMapping("IY_mypage_point")
	public String mypage_point() {
		return "mypage/mypage_point";
	}
	@GetMapping("IY_mypage_reservation")
	public String mypage_reservation() {
		return "mypage/mypage_reservation";
	}
	@GetMapping("IY_mypage_edit_theater")
	public String mypage_edit() {
		return "mypage/mypage-edit-theater";
	}
	@GetMapping("IY_mypage")
	public String mypage() {
		return "mypage/mypage";
	}
}

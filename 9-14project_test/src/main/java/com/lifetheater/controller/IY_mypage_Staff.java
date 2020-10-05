package com.lifetheater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.lifetheater.service.BoardService;

@Controller
public class IY_mypage_Staff {

	@Autowired
	private BoardService boardService;
	
	@GetMapping("IY_mypage_staff")
	public String mypage_staff() {
		return "mypage/staff/mypage_staff";
	}
}

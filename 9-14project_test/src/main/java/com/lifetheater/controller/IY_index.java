package com.lifetheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IY_index {

	@GetMapping("/lifetheater")
	public String index() {
		return "index";
	}
	
	
}

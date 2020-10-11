package com.lifetheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IY_Support {

	// QnA info by db
	
	
	// home - faq
	@GetMapping("support")
	public String cc_support() {
		return "support/support";
	}
	
}

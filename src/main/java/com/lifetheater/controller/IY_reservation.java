package com.lifetheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IY_reservation {
	
	@GetMapping("IY_re01")
	public String fastreservation01() {
		return "reservation/re01";
	}
	@GetMapping("IY_re02")
	public String fastreservation02() {
		return "reservation/re02";
	}
	@GetMapping("IY_re03")
	public String fastreservation03() {
		return "reservation/re03";
	}
	
}

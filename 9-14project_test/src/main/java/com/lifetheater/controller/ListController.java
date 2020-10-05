package com.lifetheater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.lifetheater.vo.DetailPageVO;

@Controller
public class ListController {

	@GetMapping("/IY_listLoad")
	public String listLoad() {
		
		return "list_info/listLoad";
	}
	
	@GetMapping("/IY_listLoad_admin")
	public String listLoad_admin() {
		
		return "list_info/listLoad_admin";
	}
	
	@GetMapping("/IY_detailPage")
	public String detailPage(){
		
		return "list_info/detailPage";
	}
	
	@GetMapping("/IY_detailPage_admin")
	public String detailPage_admin() {
		
		return "list_info/detailPage_admin";
	}
	
	@GetMapping("/IY_detailPage_schedule")
	//@RequestBody
	public String detailPage_schedule(@RequestBody DetailPageVO vo, Model m) {
		m.addAttribute("Info",vo);
		return "list_info/detailPage_schedule";
	}
	
	
	
}

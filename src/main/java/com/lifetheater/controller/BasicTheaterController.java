package com.lifetheater.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lifetheater.service.BasicTheaterService;
import com.lifetheater.vo.BasicTheaterVO;
import com.lifetheater.vo.UserVO;


@Controller
public class BasicTheaterController {
	
	@Autowired
	private BasicTheaterService Service;

	@GetMapping("/IY_theater_list") //뷰페이지 리스트
	public String theater_list(Model m, HttpServletRequest request, 
			@ModelAttribute BasicTheaterVO td) {
		
		//List<NBoardVO> list=Service.getnlist(nboard);
		// List<TheaterDVO> list = Service.getDlist(tv);
		 List<BasicTheaterVO> tdlist = new ArrayList<BasicTheaterVO>();
		
		 request.setAttribute("tdlist", tdlist);
		return "list_info/theater_list";
	}
	
	@GetMapping("/IY_theater_view") //뷰페이지 상세 작성
	public String theater_view() {
		return "list_info/theater_view";
	}
	
	@GetMapping("/IY_theater_write") //작성 페이지
	public String theater_write(HttpServletRequest session) {
		UserVO u = null;
	/*	if(session.getAttribute("login")==null) {
			return "/user/login";
		}else {
			u = (UserVO)session.getAttribute("login");
			if(u.getMembertype()!='2') {
				return "redirect:/IY_theater_list";
			}else {
				
			}
		} */ 
		
		return "list_info/theater_write";
	}
	
	@ResponseBody
	@PostMapping("/IY_theater_write_ok")
	public String theater_write_ok(@RequestBody BasicTheaterVO tdVO) {
		this.Service.basictheaterInsert(tdVO);
		return "sucess";
		//return "redirect:IY_theater_list";
	}

	
	
	@PostMapping("/td_mainposter")
	public String tdmainposter(@RequestBody BasicTheaterVO tdVO) {
		this.Service.basictheaterImgInsert(tdVO);
		return "redirect:IY_theater_write";
	}
	
}

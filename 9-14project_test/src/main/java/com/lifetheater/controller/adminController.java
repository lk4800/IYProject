package com.lifetheater.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lifetheater.service.AdminService;
import com.lifetheater.vo.UserListVO;

@Controller
public class adminController {
	
	@Autowired
	private AdminService service;
	
	
	  @GetMapping("IY_admin_userSerch") public String userSerch(HttpServletRequest request,Model m,UserListVO userListVO) {
		  int page=1; 
		  int limit=10; 
		  if(request.getParameter("page")!=null) {
			  page=Integer.parseInt(request.getParameter("page"));
		  }
	  
		  String condition = request.getParameter("condition"); 
		  String keyword=request.getParameter("keyword");
		  if(keyword == null) {
			  System.out.println("키워드 없어");
		  }else {
			  System.out.println("키워드 있어");
			  System.out.println("keyword : "+keyword);
		  }
		  if(condition == null) {
			 System.out.println("condition 없어");
		  }else {
			  System.out.println("condition 있어");
			  System.out.println("condition : "+condition);
		  }
	  
		  m.addAttribute("condition", condition); m.addAttribute("keyword", keyword);
	  	
		  userListVO.setStartrow((page-1)*10+1);//시작행 번호
		  userListVO.setEndrow(userListVO.getStartrow()+limit-1);//끝행번호
	  
		  int totalCount=this.service.getTotalCount(userListVO);//총 유져 수
		  System.out.println(totalCount);
	  
		  List<UserListVO> list=service.getUserList(userListVO); 
		  for(UserListVO u : list) { 
			  System.out.println(u);
		  }
	  
		  int maxpage=(int)((double)totalCount/limit+0.95); 
		  int startpage=(((int)((double)page/10+0.9))-1)*10+1; 
	  	  int endpage=maxpage;
	  	  if(endpage>startpage+10-1) 
	  		endpage=startpage+10-1;
	  
	  
	  	  m.addAttribute("totalCount",totalCount); 
	  	  request.setAttribute("userlist",list); 
	  	  m.addAttribute("startpage", startpage); 
	  	  m.addAttribute("endpage",endpage); 
	  	  m.addAttribute("maxpage", maxpage); 
	  	  m.addAttribute("page", page);
	  	  return "admin/memberTypeChage";
	  }
	  
	  @ResponseBody
	  @PostMapping("/general_memberCh") public ResponseEntity<Void> general_memberCh(@RequestBody UserListVO user){ 
		  ResponseEntity<Void> entity = null;
		  System.out.println(user.getEmail()); 
		  try {
			  this.service.general_memberCh(user); entity = new ResponseEntity<Void>(HttpStatus.OK);
			  }catch(Exception e) {
				  e.printStackTrace(); entity = new ResponseEntity<Void>(HttpStatus.BAD_REQUEST);
			  }
	  
		  return entity; 
	  }
	  
	  @ResponseBody
	  @PostMapping("/show_memberCh") public ResponseEntity<Void> show_memberCh(@RequestBody UserListVO user){ 
		ResponseEntity<Void> entity = null; 
		System.out.println(user.getEmail()); 
		try {
			this.service.show_memberCh(user); 
			entity = new ResponseEntity<Void>(HttpStatus.OK);
			}catch(Exception e) {
			e.printStackTrace(); entity = new
			ResponseEntity<Void>(HttpStatus.BAD_REQUEST); 
	  }
	  
	  return entity;
	  }
	  
	  
	  @GetMapping("/IY_amdin_theaterCh")
	  public String view_check(Model m,HttpServletRequest request,UserListVO teaterListVO) {//연극 VO클래스 바꿔야댐
		  int page=1; 
		  int limit=10; 
		  if(request.getParameter("page")!=null) {
			  page=Integer.parseInt(request.getParameter("page"));
		  }
	  
		  String condition = request.getParameter("condition"); 
		  String keyword=request.getParameter("keyword");
		  if(keyword == null) {
			  System.out.println("키워드 없어");
		  }else {
			  System.out.println("키워드 있어");
			  System.out.println("keyword : "+keyword);
		  }
		  if(condition == null) {
			 System.out.println("condition 없어");
		  }else {
			  System.out.println("condition 있어");
			  System.out.println("condition : "+condition);
		  }
	  
		  m.addAttribute("condition", condition); m.addAttribute("keyword", keyword);
	  	
		  teaterListVO.setStartrow((page-1)*10+1);//시작행 번호
		  teaterListVO.setEndrow(teaterListVO.getStartrow()+limit-1);//끝행번호
	  
		  int totalCount=this.service.getTotalCount(teaterListVO);//총 유져 수
		  System.out.println(totalCount);
	  
		  List<UserListVO> list=service.getUserList(teaterListVO); 
		  for(UserListVO u : list) { 
			  System.out.println(u);
		  }
	  
		  int maxpage=(int)((double)totalCount/limit+0.95); 
		  int startpage=(((int)((double)page/10+0.9))-1)*10+1; 
	  	  int endpage=maxpage;
	  	  if(endpage>startpage+10-1) 
	  		endpage=startpage+10-1;
	  
	  
	  	  m.addAttribute("totalCount",totalCount); 
	  	  m.addAttribute("theaterChList",list); 
	  	  m.addAttribute("startpage", startpage); 
	  	  m.addAttribute("endpage",endpage); 
	  	  m.addAttribute("maxpage", maxpage); 
	  	  m.addAttribute("page", page);
		  
		  return "admin/theaterCh";
	  }
	 

}

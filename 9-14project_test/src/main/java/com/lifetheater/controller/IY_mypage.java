package com.lifetheater.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lifetheater.service.BoardService;
import com.lifetheater.service.RepService;
import com.lifetheater.vo.UserVO;

@Controller
public class IY_mypage {

	@Autowired
	private BoardService Service;
	@Autowired
	private RepService repService;
	
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
	public String mypage(Model m, HttpSession session,HttpServletResponse response) throws Exception {

		UserVO user = (UserVO)session.getAttribute("login");
		if(user==null) {
			response.setContentType("text/html; charset=UTF-8");

		   PrintWriter out = response.getWriter();
		   out.println("<script>alert('로그인이 필요한 서비스입니다.');"
		   		+ "location.href='/controller/IY_login'</script>");
		   return null;
		}
		
		String userEmail = user.getEmail();
		
		// membertype -> Normarl이면
		if(user.getMembertype()=='1') {
			// 예매매내역
			
			//System.out.println("user prefTheater : " + user.getPrefTheater01());
			m.addAttribute("login",user);
			
			// 자유 게시글 목록
			
			
		}
		else if(user.getMembertype()=='2') {
			// 홍보 게시글 목록
		}
		
		
		
		return "mypage/mypage";
	}
}

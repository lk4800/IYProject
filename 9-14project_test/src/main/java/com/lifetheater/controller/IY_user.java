package com.lifetheater.controller;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.lifetheater.service.UserService;
import com.lifetheater.service.UserSha256;
import com.lifetheater.vo.UserVO;

@Controller
public class IY_user {
	
	 @Autowired
	 private UserService user_Service;


	
	@GetMapping("/IY_membership")
	public String membership() { //회원가입 페이지
		return "user/membership";
	}
	
	@GetMapping("/IY_id_search")
	public String id_search() { //ID찾기 페이지
		return "user/id_search";
	}
	
	@GetMapping("/IY_pw_search")
	public String pw_search() { //PW찾기 페이지
		return "user/pw_search";
	}
	
	@GetMapping("/IY_rs_search")
	public String rs_search() { //
		return "user/rs_search";
	}
	@GetMapping("/IY_login")
	public String login(HttpSession session) { //로그인 페이지
			return "user/login";
	}
	@GetMapping("/IY_moreinfo")
	public String moreinfo() {
		return "user/moreinfo";
	}
	
	
	@PostMapping("/checkEmail")
	public String checkEmail(UserVO user,HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException{
		
		System.out.printf("중간 확인:%s,%s,%s,%s",user.getEmail(),user.getPw(),user.getName(),user.getPhone());
 		String user_pw = user.getPw();
 		user.setPw(UserSha256.encrypt(user_pw));
		System.out.println("확인 :" + user.getPw());
		System.out.println(user.getEmail()+","+user.getName());
		user_Service.mailSendWithUserKey(user,request);

		return "redirect:/lifetheater"; //메인페이지로 이동
	}
	
	@GetMapping("/MemberShip_email_ch")
	public String MemberShip_email_ch(UserVO user) {/*유져키 변경*/
		this.user_Service.change_key(user);
		return "redirect:/lifetheater";/*메인페이지로 이동*/
	}
}






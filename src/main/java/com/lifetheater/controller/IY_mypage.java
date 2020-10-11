package com.lifetheater.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.lifetheater.service.BoardService;
import com.lifetheater.service.RepService;
import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.UserVO;

@Controller
public class IY_mypage {

	@Autowired
	private BoardService boardService;
	@Autowired
	private RepService repService;
	
	
	
	@GetMapping("IY_mypage_board")
	public String mypage_board(Model m,HttpSession session,HttpServletResponse response) throws Exception{
		
		UserVO user = (UserVO)session.getAttribute("login");
		if(user==null) {
			response.setContentType("text/html; charset=UTF-8");

		   PrintWriter out = response.getWriter();
		   out.println("<script>alert('로그인이 필요한 서비스입니다.');"
		   		+ "location.href='/controller/IY_login'</script>");
		   return null;
		}
		

		String userEmail = user.getEmail();
		if(user.getMembertype()=='1') {
			// 예매매내역
			
			//System.out.println("user prefTheater : " + user.getPrefTheater01());
			m.addAttribute("login",user);
			
			// 자유 게시글 목록
			FBoardVO fBoard = new FBoardVO();
			fBoard.setEmail(userEmail);
			fBoard.setCondition("fb_email");
			fBoard.setKeyword(userEmail);
			fBoard.setStartrow(1);
			fBoard.setEndrow(3);// endrow need to set limit and calc
			/*
			 * fboard.setStartrow((page-1)*10+1);//시작행 번호
			 * fboard.setEndrow(fboard.getStartrow()+limit-1);//끝행번호
			 */			
			List<FBoardVO> list = boardService.getflist(fBoard);
			//System.out.println("board List size : " + list.size());
			
			// list set limit under 3
			m.addAttribute("boardlist",list);
			
		}
		
		return "mypage/mypage_board";
	}
	@GetMapping("IY_mypage_edit_user")
	public String mypage_edit_user() {
		return "mypage/mypage_edit_user";
	}
	@GetMapping("IY_mypage_point")
	public String mypage_point(HttpSession session,HttpServletResponse response)throws Exception {
		
		UserVO user = (UserVO)session.getAttribute("login");
		if(user==null) {
			response.setContentType("text/html; charset=UTF-8");

		   PrintWriter out = response.getWriter();
		   out.println("<script>alert('로그인이 필요한 서비스입니다.');"
		   		+ "location.href='/controller/IY_login'</script>");
		   return null;
		}
		
		
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
		System.out.println("mypage user email : " + userEmail);
		// membertype -> Normarl이면
		if(user.getMembertype()=='1') {
			// 예매매내역
			
			//System.out.println("user prefTheater : " + user.getPrefTheater01());
			m.addAttribute("login",user);
			
			// 자유 게시글 목록
			FBoardVO fBoard = new FBoardVO();
			fBoard.setEmail(userEmail);
			fBoard.setCondition("fb_email");
			fBoard.setKeyword(userEmail);
			fBoard.setStartrow(1);
			fBoard.setEndrow(3);// endrow need to set limit and calc
			/*
			 * fboard.setStartrow((page-1)*10+1);//시작행 번호
			 * fboard.setEndrow(fboard.getStartrow()+limit-1);//끝행번호
			 */			
			List<FBoardVO> list = boardService.getflist(fBoard);
			//System.out.println("board List size : " + list.size());
			
			// list set limit under 3
			m.addAttribute("boardlist",list);
			
		}
		else if(user.getMembertype()=='2') {
			// 홍보 게시글 목록
		}
		
		
		
		return "mypage/mypage";
	}
	
	
	@GetMapping("mypage_get_board/email={useremail}")
	public List<FBoardVO> getFBoardList(@PathVariable(name="useremail")String email){
		
		// 이메일에 해당하는
		// 게시글 검색하여
		// 리스트로 반환하기
		return null;
	}
}

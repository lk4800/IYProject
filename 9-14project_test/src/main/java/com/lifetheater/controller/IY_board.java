package com.lifetheater.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.lifetheater.service.BoardService;
import com.lifetheater.service.RepService;
import com.lifetheater.vo.FBoardContVO;
import com.lifetheater.vo.FBoardVO;
import com.lifetheater.vo.FRepContVO;
import com.lifetheater.vo.NBoardVO;
import com.lifetheater.vo.PBoardVO;

@Controller
public class IY_board {
	
	@Autowired
	private BoardService Service;
	@Autowired
	private RepService repService;
	
	/*
	 * @Autowired BoardService boardService;
	 */
	
	@GetMapping("/IY_board_flist")
	public String board_flist(){
		return "board/board_flist";
	}
	@GetMapping("/IY_board_fwrite")
	public String board_fwrite() {
		return "board/board_fwrite";
	}
	@GetMapping("/IY_board_fedit")
	public String board_fedit() {
		return "board/board_fedit";
	}
	@GetMapping("IY_board_fcont")
	public String board_fcont(int fb_num,Model m) {
		FBoardContVO fbCont = this.Service.selectFBCont(fb_num);
		List<FRepContVO> frContList = this.repService.selectFreCont(fb_num);
		int totalRep = this.repService.totalRep(fb_num);
		this.Service.fHitUp(fb_num);
		m.addAttribute("fbCont",fbCont);
		m.addAttribute("frContList", frContList);
		m.addAttribute("totalRep",totalRep);
		for(FRepContVO a : frContList) {
			System.out.println("중간 확인 : "+a.getName()+", "+a.getFb_reply_cont()+", "+a.getFb_reply_date()+ 
					", "+a.getFb_reply_reply_name()+", "+a.getFb_reply_reply_cont());
		}
		return "board/board_fcont";
	}

	@GetMapping("/IY_board_plist")
	public String board_plist(){
		return "board/board_plist";
	}
	@GetMapping("/IY_board_pwrite")
	public String board_pwrite() {
		return "board/board_pwrite";
	}
	@GetMapping("/IY_board_pedit")
	public String board_pedit() {
		return "board/board_pedit";
	}
	@GetMapping("IY_board_pcont")
	public String board_pcont() {
		return "board/board_pcont";
	}
	
	@GetMapping("/IY_board_nlist")
	public String board_nlist(){
		return "board/board_nlist";
	}
	@GetMapping("/IY_board_nwrite")
	public String board_nwrite() {
		return "board/board_nwrite";
	}
	@GetMapping("/IY_board_nedit")
	public String board_nedit() {
		return "board/board_nedit";
	}
	@GetMapping("IY_board_ncont")
	public String board_ncont() {
		return "board/board_ncont";
	}
	
	@PostMapping("/fb_insert")
	public String fbInsert(@RequestBody FBoardVO fBoardVO) {
		this.Service.fBoardInsert(fBoardVO);
		return "redirect:IY_board_flist";
	}
	
	@PostMapping("/fb_update")
	public String fbUpdate(@RequestBody FBoardVO fBoardVO) {
		this.Service.fBoardUpdate(fBoardVO);
		System.out.println("중간 확인 : "+fBoardVO.getFb_title()+", "+fBoardVO.getFb_cont()+","+fBoardVO.getFb_img_url());
		return "redirect:IY_board_flist";
	}
	
	
	@PostMapping("/pb_insert")
	public String pbInsert(@RequestBody PBoardVO pBoardVO) {
		this.Service.pBoardInsert(pBoardVO);
		return "redirect:IY_board_flist";
	}
	
	@PostMapping("/nb_insert")
	public String nbInsert(@RequestBody NBoardVO nBoardVO) {
		this.Service.nBoardInsert(nBoardVO);
		return "redirect:IY_board_flist";
	}
	
	@GetMapping("/IY_fboardEdit")
	public String fboardFedit(int fb_num,Model m){
		FBoardVO fb = this.Service.selectCont(fb_num);
		m.addAttribute("fbCont", fb);
		return "board/board_fedit";
	}
	
}

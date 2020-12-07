package com.edu.controller;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.domain.BoardDTO;
import com.edu.domain.MemberDTO;
import com.edu.service.BoardService;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
	
	@Inject
	private BoardService service;
	
	private static final Logger LOGGER
		= LoggerFactory.getLogger(CommunityController.class);
	
	@RequestMapping(value="/group", method=RequestMethod.GET)
	public String getGroupBoardList(HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		LOGGER.info("CommunityController getGroupBoardList().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 강의번호를 찾아 저장한다.
		int lectureNo = member.getLectureNo();
		// memberDTO에서 아이디를 찾아 저장한다.
		String memberId = member.getMemberId();
		LOGGER.info("ClassboardController classroom() lectureNo : " + lectureNo + ", " + memberId);
			
		List<BoardDTO> groupList = null;
		groupList = service.groupList();
		model.addAttribute("groupList",groupList);
		return "/community/group";
	}
	
	//게시물 작성 GET
	@RequestMapping(value="/groupInsert", method = RequestMethod.GET)
	public void getGroupInsert() throws Exception{
		LOGGER.info("CommunityController getInsert().....");
	}
	//게시물 작성 POST
	@RequestMapping(value="/groupInsert", method = RequestMethod.POST)
	public String groupInsertProc(BoardDTO boardDTO)throws Exception{
		LOGGER.info("CommunityController POSTInsertProc().....");
		
		service.groupInsert(boardDTO);
		
	return "redirect:/community/group";
	}

	//글 번호에 해당하는 자료를 삭제한다.
	@RequestMapping("/delete/{boardNo}")
	private String boardDelete(@PathVariable int boardNo) throws Exception {
		service.boardDeleteService(boardNo);
		return "redirect:/community/group";
	}
	
/*	
	//mygroup
	@RequestMapping(value="/mygroup", method=RequestMethod.GET)
	public void getmyGroupBoardList(Model model) throws Exception {
		LOGGER.info("CommunityController getGroupBoardList().....");
		List<BoardDTO> mygroupList = null;
		mygroupList = service.mygroupList();
		model.addAttribute("groupList",mygroupList);
	}
*/
} // End - public class CommunityController
package com.edu.groupboard.controller;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.member.domain.MemberDTO;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.service.GroupboardService;

@Controller
@RequestMapping("/group/*")
public class GroupboardController {
	
	@Inject
	private GroupboardService service;
	
	private static final Logger LOGGER
		= LoggerFactory.getLogger(GroupboardController.class);
	
	@RequestMapping(value="/groupsearch", method=RequestMethod.GET)
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
			
		List<GroupboardDTO> groupList = null;
		groupList = service.groupList();
		model.addAttribute("groupList",groupList);
		return "/groupboard/groupsearch";
	}
	
	//게시물 작성 GET
	@RequestMapping(value="/groupInsert", method = RequestMethod.GET)
	public String getGroupInsert() throws Exception{
		LOGGER.info("CommunityController getInsert().....");
		
		return "groupboard/groupInsert";
		
	}
	//게시물 작성 POST
	@RequestMapping(value="/groupInsert", method = RequestMethod.POST)
	public String groupInsertProc(GroupboardDTO boardDTO, HttpServletRequest request, GrouplistDTO grouplistDTO)throws Exception{
		LOGGER.info("CommunityController POSTInsertProc().....");
		
		String groupName = request.getParameter("groupName");
		grouplistDTO.setGroupNo(0);
		grouplistDTO.setGroupName(groupName);
		
		service.groupListInsert(grouplistDTO);
		boardDTO.setGroupNo(grouplistDTO.getGroupNo());
		
		service.groupInsert(boardDTO);
		
	return "/groupboard/groupsearch";
	}

	//글 번호에 해당하는 자료를 삭제한다.
	@RequestMapping("/delete/{boardNo}")
	private String boardDelete(int boardNo) throws Exception {
		service.groupboardDeleteService(boardNo);
		return "redirect:/groupboard/groupsearch";
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
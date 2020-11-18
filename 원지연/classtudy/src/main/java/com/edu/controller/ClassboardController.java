package com.edu.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.domain.ClassboardDTO;
import com.edu.domain.MemberDTO;
import com.edu.service.ClassboardService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/class/*") // ClassboardController에서 공통적으로 사용될 url mapping
public class ClassboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(ClassboardController.class);
	
	@Inject
	ClassboardService classboardService;
	
	// TIL 작성 GET
	@RequestMapping(value="/writeTIL", method=RequestMethod.GET)
	public String getWriteTIL(HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController getWriteTIL()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/classboard/til";
	}
	
	// TIL 작성 POST
	@RequestMapping(value="/writeTIL", method=RequestMethod.POST)
	public String postWriteTIL(ClassboardDTO cbDTO, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController postWriteTIL()....");
		if (session.getAttribute("member") != null) {
			classboardService.writeTIL(cbDTO);
		}
		return "redirect:/";
	}
	
	// 클래스게시판 목록 보기(클래스룸)
	@RequestMapping(value="/classroom")
	public String classroom(HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController classroom()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 강의번호를 찾아 저장한다.
		int lectureNo = member.getLectureNo();
		logger.info("ClassboardController classroom() lectureNo : " + lectureNo);
		// 클래스게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		model.addAttribute("list", classboardService.boardList(lectureNo));
		return "/classboard/list";
	}
	
	// 클래스게시판 게시글 상세 정보
	@RequestMapping(value="/detail/{boardNo}")
	public String detailBoard(@PathVariable int boardNo, Model model) throws Exception {
		logger.info("ClassboardController detailBoard()....");
		// boardNO에 해당하는 자료의 조회수를 1 증가 시킨다.
		classboardService.addViews(boardNo);
		// boardNO에 해당하는 자료를 model에 담는다.
		model.addAttribute("detail", classboardService.boardDetail(boardNo));
		return "/classboard/detail";
	}
	
}

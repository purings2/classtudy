package com.edu.classboard.controller;

import java.util.Optional;

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

import com.edu.classboard.domain.ClassboardDTO;
import com.edu.classboard.service.ClassboardService;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/class/*") // ClassboardController에서 공통적으로 사용될 url mapping
public class ClassboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(ClassboardController.class);
	
	@Inject
	ClassboardService classboardService;
	
	// --------------------------------------------------------------
	// 내가 쓴 TIL 
	// --------------------------------------------------------------
	// TIL 게시글 작성 GET
	@RequestMapping(value="/writeTIL", method=RequestMethod.GET)
	public String getWriteTIL(HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController getWriteTIL()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/classboard/writeTIL";
	}
	
	// TIL 게시글 작성 POST
	@RequestMapping(value="/writeTIL", method=RequestMethod.POST)
	public String postWriteTIL(ClassboardDTO cbDTO, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController postWriteTIL()....");
		if (session.getAttribute("member") != null) {
			classboardService.writeTIL(cbDTO);
		}
		return "redirect:/class/classroom/all";
	}
	
	// TIL 게시글 목록 보기
	@RequestMapping(value={"/TIL", "TIL/{pageNum}"})
	public String listTIL(@PathVariable Optional<Integer> pageNum, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController listTIL()....");
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
		logger.info("ClassboardController classroom() lectureNo : " + lectureNo + ", " + memberId);
		
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = classboardService.getTILCount(lectureNo, memberId);
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		// 현재 게시글 번호를 이용해서 출력될 페이지의 최대 boardNo을 구한다.
		int maxNo = classboardService.getNextTILNum(lectureNo, memberId) - (pageNumber-1) * 5;
		// 클래스게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		model.addAttribute("list", classboardService.boardListTIL(lectureNo, memberId, maxNo));
		return "/classboard/listTIL";
	}
	
	// TIL 게시글 검색
	// 제목 또는 내용에 키워드가 들어간 글 찾기
	@RequestMapping(value="/searchTIL/{keyword}")
	public String searchTIL(@PathVariable String keyword, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController search()....");
		logger.info("ClassboardController search() : " + keyword);
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 강의번호를 찾아 저장한다.
		int lectureNo = member.getLectureNo();
		// memberDTO에서 아이디를 찾아 저장한다.
		String memberId = member.getMemberId();
		logger.info("ClassboardController classroom() lectureNo : " + lectureNo + ", " + memberId);
		// 현재 페이지의 번호를 저장하는 변수
		int pageNumber = 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = classboardService.getTILCount(lectureNo, memberId);
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", 0); //임시값. 내일 수정할 것!!!!!!!!!
		// 클래스게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		model.addAttribute("list", classboardService.searchTIL(lectureNo, memberId, "%" + keyword + "%"));
		return "/classboard/listTIL";
	}
	
	// --------------------------------------------------------------
	// 클래스룸 
	// --------------------------------------------------------------
	// 게시글 작성 GET
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String getWrite(HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController getWrite()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/classboard/write";
	}
	
	// 게시글 작성 POST
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String postWrite(ClassboardDTO cbDTO, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController postWrite()....");
		if (session.getAttribute("member") != null) {
			classboardService.write(cbDTO);
		}
		return "redirect:/class/classroom/all";
	}
	
	// 게시판 목록 보기
	@RequestMapping(value={"/classroom/{viewCategory}", "/classroom/{viewCategory}/{pageNum}"})
	public String classroom(@PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
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
		logger.info("ClassboardController classroom() viewCategory : " + viewCategory);
		
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = viewCategory.equals("all") ? 
				classboardService.getBoardCount(lectureNo) : classboardService.getBoardCount2(lectureNo, viewCategory);
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		// 클래스게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		if (viewCategory.equals("all")) {
			// 현재 게시글 번호를 이용해서 출력될 페이지의 최대 boardNo을 구한다.
			int maxNo = classboardService.getNextNum(lectureNo) - (pageNumber-1) * 5;
			model.addAttribute("list", classboardService.boardList(lectureNo, maxNo));
		} else { // 말머리가 선택되면 선택된 말머리의 게시글만 보여준다.
			// 현재 게시글 번호를 이용해서 출력될 페이지의 최대 boardNo을 구한다.
			int maxNo = classboardService.getNextNum2(lectureNo, viewCategory) - (pageNumber-1) * 10;
			model.addAttribute("list", classboardService.boardList2(lectureNo, viewCategory, maxNo));
		}
		return "/classboard/list";
	}
	
	// 게시글 상세 정보
	@RequestMapping(value="/detail/{boardNo}")
	public String detailBoard(@PathVariable int boardNo, Model model) throws Exception {
		logger.info("ClassboardController detailBoard()....");
		//logger.info("detailBoard() : " + classboardService.boardDetail(boardNo));
		// boardNO에 해당하는 자료의 조회수를 1 증가 시킨다.
		classboardService.addViews(boardNo);
		// boardNO에 해당하는 자료를 model에 담는다.
		model.addAttribute("detail", classboardService.boardDetail(boardNo));
		return "/classboard/detail";
	}
	
	// 게시글 수정 GET
	@RequestMapping(value="/update/{boardNo}", method=RequestMethod.GET)
	public String getUpdate(@PathVariable int boardNo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("ClassboardController getUpdate()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		//logger.info("BoardDTO : " + classboardService.boardDetail(boardNo));
		model.addAttribute("detail", classboardService.boardDetail(boardNo));
		return "/classboard/update";
	}
	
	// 게시글 수정 POST
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String postUpdate(ClassboardDTO cbDTO, HttpSession session) throws Exception {
		logger.info("ClassboardController postUpdate()....");
		//logger.info("postUpdate() : " + cbDTO);
		classboardService.update(cbDTO);
		return "redirect:/class/detail/" + cbDTO.getBoardNo();
	}
	
	// 게시글 삭제
	@RequestMapping(value="/delete/{boardNo}")
	public String delete(@PathVariable int boardNo) throws Exception {
		logger.info("ClassboardController delete()....");
		classboardService.delete(boardNo);
		return "redirect:/class/classroom/all";
	}
	
	// 게시글 좋아요
	@RequestMapping(value="/like", method=RequestMethod.POST)
	public int like(int boardNo) throws Exception {
		logger.info("ClassboardController like()....");
		// 게시글 좋아요를 하기 위해 게시글 번호를 Service에게 넘겨준다.
		int result = classboardService.addLikes(boardNo);
		return result;
	}
	
	// 게시글 검색
	// 제목 또는 내용에 키워드가 들어간 글 찾기
	@RequestMapping(value="/search/{keyword}/{viewCategory}")
	public String search(@PathVariable String keyword, @PathVariable String viewCategory, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController search()....");
		logger.info("ClassboardController search() : " + keyword);
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 강의번호를 찾아 저장한다.
		int lectureNo = member.getLectureNo();
		// 현재 페이지의 번호를 저장하는 변수
		int pageNumber = 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = viewCategory.equals("all") ? 
				classboardService.getBoardCount(lectureNo) : classboardService.getBoardCount2(lectureNo, viewCategory);
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", 0); //임시값. 내일 수정할 것!!!!!!!!!
		// 클래스게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		if (viewCategory.equals("all")) {
			model.addAttribute("list", classboardService.search(lectureNo, "%" + keyword + "%"));
		} else { // 말머리가 선택되면 선택된 말머리의 게시글만 검색한다.
			model.addAttribute("list", classboardService.search2(lectureNo, "%" + keyword + "%", viewCategory));
		}
		return "/classboard/list";
	}
	
}

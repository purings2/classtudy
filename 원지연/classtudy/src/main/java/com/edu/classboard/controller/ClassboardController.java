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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.classboard.domain.ClassboardDTO;
import com.edu.classboard.service.ClassboardService;
import com.edu.common.CommonUtils;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/class/classboard/*") // ClassboardController에서 공통적으로 사용될 url mapping
public class ClassboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(ClassboardController.class);
	
	@Inject
	ClassboardService classboardService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 게시글 작성 GET
	@RequestMapping(value="/write", method=RequestMethod.GET)
	private String getWrite(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("ClassboardController getWrite()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/classboard/write";
	}
	
	// TIL 게시글 작성 GET
	@RequestMapping(value="/write/til", method=RequestMethod.GET)
	private String getWriteTIL(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("ClassboardController getWriteTIL()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		model.addAttribute("til", "yes");
		return "/classboard/write";
	}
	
	// 게시글 작성 POST
	@RequestMapping(value="/write", method=RequestMethod.POST)
	private String postWrite(ClassboardDTO cbDTO, HttpSession session, Model model) throws Exception {
		logger.info("ClassboardController postWrite()....");
		if (session.getAttribute("member") != null) {
			cbDTO.setTitle(commonUtils.htmlConverter(cbDTO.getTitle()));
			cbDTO.setContent(commonUtils.htmlConverter(cbDTO.getContent()));
			classboardService.write(cbDTO);
		}
		return "redirect:/class/classboard/all";
	}
	
	// 게시글 목록 보기
	@RequestMapping(value={"/{viewCategory}", "/{viewCategory}/{pageNum}"})
	private String list(@PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController list()....");
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
		logger.info("ClassboardController list() lectureNo : " + lectureNo + ", " + memberId);
		logger.info("ClassboardController list() viewCategory : " + viewCategory);
		
		if (lectureNo == 1 || lectureNo == 0) {
			model.addAttribute("message", "수강중인 강의가 있어야 이용할 수 있는 메뉴입니다.<br>관리자 확인을 받은 후 다시 이용해주세요.");
			return "/common/noAccess";
		} else {
			// 현재 페이지의 번호를 저장하는 변수
			// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
			int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
			// 화면에 보여줄 전체 게시글 건수를 구하기. 
			// 말머리가 있으면 해당하는 게시글만 카운트한다.
			int totalCount;
			if (viewCategory.equals("myTIL")) {
				totalCount = classboardService.getTILCount(lectureNo, memberId);
			} else if (viewCategory.equals("all")) {
				totalCount = classboardService.getBoardCountAll(lectureNo);
			} else {
				totalCount = classboardService.getBoardCount(lectureNo, viewCategory);
			}
			// 화면에 보여줄 게시글의 수
			int numOfPage = 13;
			// 구한 값을 뷰 페이지로 보내준다.
			model.addAttribute("pageNumber", pageNumber);
			model.addAttribute("totalCount", totalCount);
			model.addAttribute("numOfPage", numOfPage);
			// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
			int startNo = (pageNumber-1) * numOfPage;
			// 클래스게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
			// 내가 쓴 TIL로 들어왔을 때 구분해서 보여주기
			if(viewCategory.equals("myTIL")) {
				model.addAttribute("list", classboardService.boardListTIL(lectureNo, memberId, startNo, numOfPage));
				return "/classboard/listTIL";
			} else {
				model.addAttribute("list", 
					// 말머리가 선택되면 해당 게시글만 아니면 전체를 보여준다.
					viewCategory.equals("all") ? 
						classboardService.boardListAll(lectureNo, startNo, numOfPage) :
						classboardService.boardList(lectureNo, viewCategory, startNo, numOfPage));
				return "/classboard/list";
			}
		}
	}
	
	// 게시글 상세 정보
	@RequestMapping(value={"/detail/{boardNo}", "/detail/{boardNo}/{boardOption}"})
	private String detailBoard(@PathVariable int boardNo, @PathVariable Optional<String> boardOption, 
				Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("ClassboardController detailBoard()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		//logger.info("detailBoard() : " + classboardService.boardDetail(boardNo));
		// boardNo에 해당하는 자료의 조회수를 1 증가 시킨다.
		int isExist = classboardService.addViews(boardNo);
		// boardNo에 해당하는 게시글이 없으면 
		if (isExist < 1) {
			model.addAttribute("message", "존재하지 않는 게시글입니다. 확인하시고 다시 이용해주세요.");
			return "/common/noAccess";
		}
		// boardNo에 해당하는 자료를 model에 담는다.
		model.addAttribute("detail", classboardService.boardDetail(boardNo));
		// boardOption에 값이 있으면 값을 저장한다.
		String cbOption = boardOption.isPresent() ? boardOption.get() : "";
		// til 옵션이 있으면 TIL 페이지로 이동하기 위해 값을 설정한다.
		if (cbOption.contains("til")) {
			model.addAttribute("til", "yes");
		}
		// comment 옵션이 있으면 commentList 위치로 이동하기 위해 값을 설정한다.
		if (cbOption.contains("comment")) {
			model.addAttribute("comment", "yes");
		}
		return "/classboard/detail";
	}
	
	// 게시글 수정 GET
	@RequestMapping(value="/update/{boardNo}", method=RequestMethod.GET)
	private String getUpdate(@PathVariable int boardNo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
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
	private String postUpdate(ClassboardDTO cbDTO, HttpSession session) throws Exception {
		logger.info("ClassboardController postUpdate()....");
		//logger.info("postUpdate() : " + cbDTO);
		cbDTO.setTitle(commonUtils.htmlConverter(cbDTO.getTitle()));
		cbDTO.setContent(commonUtils.htmlConverter(cbDTO.getContent()));
		classboardService.update(cbDTO);
		return "redirect:/class/classboard/detail/" + cbDTO.getBoardNo();
	}
	
	// 게시글 삭제
	@RequestMapping(value="/delete/{boardNo}")
	private String delete(@PathVariable int boardNo) throws Exception {
		logger.info("ClassboardController delete()....");
		classboardService.delete(boardNo);
		return "redirect:/class/classboard/all";
	}
	
	// 게시글 좋아요
	@ResponseBody
	@RequestMapping(value="/like", method=RequestMethod.POST)
	private int like(int boardNo, String memberId) throws Exception {
		logger.info("ClassboardController like()....");
		
		// 게시글 좋아요를 하기 위해 게시글 번호를 Service에게 넘겨준다.
		classboardService.addLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 기록한다.
		classboardService.writeLikes(boardNo, memberId);
		// 좋아요 후의 좋아요수를 가져와서 보낸다.
		int result = classboardService.getLikes(boardNo);
		logger.info("ClassboardController Return Value [" + result + "]");
		
		return result;
	}
	
	// 게시글 좋아요 여부 확인
	@ResponseBody
	@RequestMapping(value="/likeCheck", method=RequestMethod.POST)
	private int likeCheck(int boardNo, String memberId) throws Exception {
		logger.info("ClassboardController likeCheck()....");
		logger.info("ClassboardController likeCheck() : " + boardNo + ", " + memberId);
		// 좋아요 여부를 확인하기 위해 게시글 번호, 아이디를 Service에게 넘겨준다.
		int result = classboardService.likeCheck(boardNo, memberId);
		// 좋아요 테이블에서 값을 확인한 결과를 보낸다.
		return result;
	}
	
	// 게시글 좋아요 취소
	@ResponseBody
	@RequestMapping(value="/deleteLike", method=RequestMethod.POST)
	private int deleteLike(int boardNo, String memberId) throws Exception {
		logger.info("ClassboardController deleteLike()....");
		logger.info("ClassboardController deleteLike() : " + boardNo + ", " + memberId);
		
		// 게시글 좋아요를 취소하기 위해 게시글 번호를 Service에게 넘겨준다.
		classboardService.subtractLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 삭제한다.
		classboardService.deleteLikes(boardNo, memberId);
		// 좋아요 취소 후의 좋아요수를 가져와서 보낸다.
		int result = classboardService.getLikes(boardNo);
		logger.info("ClassboardController Return Value [" + result + "]");
		
		return result;
	}
	
	// TIL 게시글 검색 - 키워드가 들어간 글 찾기
	@RequestMapping(value={"/searchTIL/{searchCode}/{keyword}", "/searchTIL/{searchCode}/{keyword}/{pageNum}"})
	private String searchTIL(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable Optional<Integer> pageNum, 
								HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("ClassboardController search()....");
		logger.info("ClassboardController search() : " + keyword);
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
		logger.info("ClassboardController searchTIL() lectureNo : " + lectureNo + ", " + memberId);
		// 검색한 키워드를 뷰 페이지로 보내준다.
		model.addAttribute("nowKeyword", keyword);
		// 키워드에 특수문자가 있으면 치환
		keyword = commonUtils.htmlConverter(keyword);
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 게시글 건수를 구하고
		// 클래스게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
		case 1: //제목+내용 검색
			model.addAttribute("totalCount", classboardService.getSearchTILCountAll(lectureNo, memberId, "%" + keyword + "%"));
			model.addAttribute("list", classboardService.searchTILAll(lectureNo, memberId, "%" + keyword + "%", startNo, numOfPage));
			break;
		case 2: //제목 검색
			model.addAttribute("totalCount", classboardService.getSearchTILCountTitle(lectureNo, memberId, "%" + keyword + "%"));
			model.addAttribute("list", classboardService.searchTILTitle(lectureNo, memberId, "%" + keyword + "%", startNo, numOfPage));
			break;
		case 3: //내용 검색
			model.addAttribute("totalCount", classboardService.getSearchTILCountContent(lectureNo, memberId, "%" + keyword + "%"));
			model.addAttribute("list", classboardService.searchTILContent(lectureNo, memberId, "%" + keyword + "%", startNo, numOfPage));
			break;
		}
		return "/classboard/listTIL";
	}
	
	// 게시글 검색 - 키워드가 들어간 글 찾기
	@RequestMapping(value={"/search/{searchCode}/{keyword}/{viewCategory}", "/search/{searchCode}/{keyword}/{viewCategory}/{pageNum}"})
	private String search(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, 
							HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("ClassboardController search()....");
		logger.info("ClassboardController search() : " + keyword);
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 강의번호를 찾아 저장한다.
		int lectureNo = member.getLectureNo();
		// 검색한 키워드를 뷰 페이지로 보내준다.
		model.addAttribute("nowKeyword", keyword);
		// 키워드에 특수문자가 있으면 치환
		keyword = commonUtils.htmlConverter(keyword);
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 말머리가 전체이면 viewCategory를 "%"로 설정한다.
		if (viewCategory.equals("all")) { viewCategory = "%"; }
		// 화면에 보여줄 전체 게시글 건수를 구하고
		// 클래스게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
		case 1: //제목+내용 검색
			model.addAttribute("totalCount", classboardService.getSearchCountAll(lectureNo, "%" + keyword + "%", viewCategory));
			model.addAttribute("list", classboardService.searchAll(lectureNo, "%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 2: //제목 검색
			model.addAttribute("totalCount", classboardService.getSearchCountTitle(lectureNo, "%" + keyword + "%", viewCategory));
			model.addAttribute("list", classboardService.searchTitle(lectureNo, "%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 3: //내용 검색
			model.addAttribute("totalCount", classboardService.getSearchCountContent(lectureNo, "%" + keyword + "%", viewCategory));
			model.addAttribute("list", classboardService.searchContent(lectureNo, "%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 4: //작성자 검색
			model.addAttribute("totalCount", classboardService.getSearchCountWriter(lectureNo, "%" + keyword + "%", viewCategory));
			model.addAttribute("list", classboardService.searchWriter(lectureNo, "%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		}
		return "/classboard/list";
	}
	
}

package com.edu.common.controller;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.common.CommonUtils;
import com.edu.common.service.MainService;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
public class MainController {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	MainService mainService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 메인 화면 => http://localhost:8071/로 들어왔을 때
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model, HttpSession session) throws Exception {
		logger.info("MainController main().....");
		
		// 세션에 MemberDTO가 있는지 확인하고
		// 있으면 model에 member의 이름을 담는다.
		if (session.getAttribute("member") != null) {
			MemberDTO member = (MemberDTO)session.getAttribute("member");
			model.addAttribute("name", member.getName());
		} else {
			model.addAttribute("name", "방문자");
		}
		
		return "/main"; // => WEB-INF/views/main.jsp
	}
	
	// 태그별 게시글 목록
	@RequestMapping(value = { "tags/{tags}", "tags/{tags}/{pageNum}"})
	private String mainlist(@PathVariable String tags, @PathVariable Optional<Integer> pageNum, Model model,
			RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		logger.info("MainController mainlist().....");
		// 값이 POST로 넘어올 때 선택된 tag의 value를 저장한다.
		if (request.getParameter("tags") != null) {
			tags = request.getParameter("tags");
		} 
		model.addAttribute("tags", tags);
		logger.info("MainController mainlist() tags : " + tags);
		
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int) pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기.
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = mainService.getBoardCount("%"+tags+"%");
		// 화면에 보여줄 게시글의 수
		int numOfPage = 10;
		// 구한 값을 뷰 페이지로 보내준다
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber - 1) * numOfPage;
		// 자유게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		model.addAttribute("list", mainService.boardList("%"+tags+"%", startNo, numOfPage));
		logger.info("model : " + model);
		
		// 게시판 상단에 공지사항 출력
		// 공지사항 개수를 카운트한다.
		int noticeCount = mainService.getNoticeCount();
		model.addAttribute("noticeCount", noticeCount);
		// 처음에 출력할 공지사항 개수
		int numOfNotice = 3;
		model.addAttribute("numOfNotice", numOfNotice);
		// 처음에 보여지는 공지사항 목록
		model.addAttribute("noticeListFirst", mainService.boardListNoticeFirst(numOfNotice));
		// 더보기 눌렀을 때 보여지는 공지사항 목록
		model.addAttribute("noticeList", mainService.boardListNotice(numOfNotice, noticeCount));
		
		return "/common/list";
		
	}

	// 게시글 검색(제목 또는 내용에 키워드가 들어간 글 찾기)
	@RequestMapping(value = { "/search/{searchCode}/{keyword}/{viewCategory}",
			"/search/{searchCode}/{keyword}/{viewCategory}/{pageNum}" })
	private String search(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable String viewCategory,
			@PathVariable Optional<Integer> pageNum, Model model) throws Exception {
		logger.info("MainController search()....");
		logger.info("MainController search() : " + keyword);
		// 검색한 키워드를 뷰 페이지로 보내준다.
		model.addAttribute("nowKeyword", keyword);
		// 키워드에 특수문자가 있으면 치환
		keyword = commonUtils.htmlConverter(keyword);
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int) pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber - 1) * numOfPage;
		// 화면에 보여줄 전체 게시글 건수를 구하기
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		if (viewCategory.equals("all")) {
			viewCategory = "%";
		} // 말머리 전체
		// 자유게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
		case 1: // 제목+내용 검색
			model.addAttribute("totalCount", mainService.getSearchCountAll("%" + keyword + "%", viewCategory));
			model.addAttribute("list", mainService.searchAll("%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 2: // 제목 검색
			model.addAttribute("totalCount", mainService.getSearchCountTitle("%" + keyword + "%", viewCategory));
			model.addAttribute("list", mainService.searchTitle("%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 3: // 내용 검색
			model.addAttribute("totalCount", mainService.getSearchCountContent("%" + keyword + "%", viewCategory));
			model.addAttribute("list",
					mainService.searchContent("%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		case 4: // 작성자 검색
			model.addAttribute("totalCount", mainService.getSearchCountWriter("%" + keyword + "%", viewCategory));
			model.addAttribute("list", mainService.searchWriter("%" + keyword + "%", startNo, numOfPage, viewCategory));
			break;
		}
		// int totalCount = viewCategory.equals("all") ?
		// mainService.getSearchCountAll("%" + keyword + "%") :
		// mainService.getSearchCount(viewCategory, "%" + keyword + "%");
		/*
		 * if (viewCategory.equals("all")) { model.addAttribute("list",
		 * mainService.searchAll("%" + keyword + "%", startNo, numOfPage)); } else { //
		 * 말머리가 선택되면 선택된 말머리의 게시글만 검색한다. model.addAttribute("list",
		 * mainService.search("%" + keyword + "%", viewCategory, startNo, numOfPage)); }
		 */
		// 게시판 상단에 공지사항 출력
		// 공지사항 개수를 카운트한다.
		int noticeCount = mainService.getNoticeCount();
		model.addAttribute("noticeCount", noticeCount);
		// 처음에 출력할 공지사항 개수
		int numOfNotice = 3;
		model.addAttribute("numOfNotice", numOfNotice);
		// 처음에 보여지는 공지사항 목록
		model.addAttribute("noticeListFirst", mainService.boardListNoticeFirst(numOfNotice));
		// 더보기 눌렀을 때 보여지는 공지사항 목록
		model.addAttribute("noticeList", mainService.boardListNotice(numOfNotice, noticeCount));
		return "/main/list";
	}
	
	// 학원
	@RequestMapping(value="/academy", method=RequestMethod.GET)
	public String academy(Model model, HttpSession session) throws Exception {
		logger.info("MainController academy().....");
		return "/common/academy"; // => WEB-INF/views/academy.jsp
	}
	
}

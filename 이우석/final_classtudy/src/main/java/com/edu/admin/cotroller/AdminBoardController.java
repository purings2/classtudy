package com.edu.admin.cotroller;

import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.PagingDTO;
import com.edu.admin.service.AdminBoardService;
import com.edu.common.CommonUtils;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/adboard/*") // AdminController에서 공통적으로 사용될 url mapping
public class AdminBoardController {

	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(AdminBoardController.class);

	@Inject
	AdminBoardService adminBoardService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 게시글 목록
	@RequestMapping(value = {"/{viewTable}", "/{viewTable}/{pageNum}"})
	public String adminBoardList(@PathVariable String viewTable, @PathVariable Optional<Integer> pageNum,
				HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController adminBoardList().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 게시글 건수를 구한다.
		// 게시글 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		if (viewTable.equals("all")) {
			model.addAttribute("totalCount", adminBoardService.getAdminBoardCount());
			model.addAttribute("list", adminBoardService.adminBoardList(startNo, numOfPage));
		} else if (viewTable.equals("classboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminClassboardCount());
			model.addAttribute("list", adminBoardService.adminClassboardList(startNo, numOfPage));
		} else if (viewTable.equals("freeboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminFreeboardCount());
			model.addAttribute("list", adminBoardService.adminFreeboardList(startNo, numOfPage));
		} else if (viewTable.equals("groupboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminGroupboardCount());
			model.addAttribute("list", adminBoardService.adminGroupboardList(startNo, numOfPage));
		}
		return "/adboard/boardList";
	}
	// 게시글 상세정보 보기
	@RequestMapping({"/detail/{viewTable}/{boardNo}", "/detail/{viewTable}/{boardNo}/{comment}"})
	private String boardDetail(@PathVariable String viewTable, @PathVariable int boardNo, @PathVariable Optional<String> comment,
				HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController boardDetail().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 게시글 상세정보 화면에 보여줄 데이터 찾아오기 - 테이블별 구분
		if (viewTable.equals("classboard")) {
			model.addAttribute("detail", adminBoardService.classboardDetail(boardNo));
		} else if (viewTable.equals("freeboard")) {
			model.addAttribute("detail", adminBoardService.freeboardDetail(boardNo));
		} else if (viewTable.equals("groupboard")) {
			model.addAttribute("detail", adminBoardService.groupboardDetail(boardNo));
		}
		return "/adboard/boardDetail";
	}
	// 게시글 삭제
	@RequestMapping("/delete/{viewTable}/{boardNo}")
	private String boardDelete(@PathVariable String viewTable, @PathVariable int boardNo,
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController boardDelete().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 게시글번호에 해당하는 게시글을 삭제 - 테이블별 구분
		if (viewTable.equals("classboard")) {
			adminBoardService.classboardDelete(boardNo);
		} else if (viewTable.equals("freeboard")) {
			adminBoardService.freeboardDelete(boardNo);
		} else if (viewTable.equals("groupboard")) {
			adminBoardService.groupboardDelete(boardNo);
		}
		return "redirect:/adboard/all";
	}
	// 게시글 키워드 검색
	@RequestMapping(value={"/search/{searchCode}/{keyword}/{viewTable}", "/search/{searchCode}/{keyword}/{viewTable}/{pageNum}"})
	private String searchAdminBoard(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable String viewTable,
				@PathVariable Optional<Integer> pageNum, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController searchMember().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
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
		// viewTable에 따라 검색 테이블을 다르게한다.
		if (viewTable.equals("all")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //제목+내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminboardCountAll(keyword));
				model.addAttribute("list", adminBoardService.searchAdminBoardAll(keyword, startNo, numOfPage));
				break;
			case 2: //제목 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminboardCountTitle(keyword));
				model.addAttribute("list", adminBoardService.searchAdminBoardTitle(keyword, startNo, numOfPage));
				break;
			case 3: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminboardCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchAdminBoardContent(keyword, startNo, numOfPage));
				break;
			case 4: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminboardCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchAdminBoardWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("classboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //제목+내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassboardCountAll(keyword));
				model.addAttribute("list", adminBoardService.searchClassBoardAll(keyword, startNo, numOfPage));
				break;
			case 2: //제목 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassboardCountTitle(keyword));
				model.addAttribute("list", adminBoardService.searchClassBoardTitle(keyword, startNo, numOfPage));
				break;
			case 3: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassboardCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchClassBoardContent(keyword, startNo, numOfPage));
				break;
			case 4: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassboardCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchClassBoardWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("freeboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //제목+내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeboardCountAll(keyword));
				model.addAttribute("list", adminBoardService.searchFreeBoardAll(keyword, startNo, numOfPage));
				break;
			case 2: //제목 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeboardCountTitle(keyword));
				model.addAttribute("list", adminBoardService.searchFreeBoardTitle(keyword, startNo, numOfPage));
				break;
			case 3: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeboardCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchFreeBoardContent(keyword, startNo, numOfPage));
				break;
			case 4: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeboardCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchFreeBoardWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("groupboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //제목+내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupboardCountAll(keyword));
				model.addAttribute("list", adminBoardService.searchGroupBoardAll(keyword, startNo, numOfPage));
				break;
			case 2: //제목 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupboardCountTitle(keyword));
				model.addAttribute("list", adminBoardService.searchGroupBoardTitle(keyword, startNo, numOfPage));
				break;
			case 3: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupboardCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchGroupBoardContent(keyword, startNo, numOfPage));
				break;
			case 4: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupboardCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchGroupBoardWriter(keyword, startNo, numOfPage));
				break;
			}
		}
		return "/adboard/boardList";
	}
	
	// 자유게시판 공지사항 목록
	@RequestMapping(value = {"/notice", "/notice/{pageNum}"})
	public String adminNoticeList(@PathVariable Optional<Integer> pageNum,
				HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController adminNoticeList().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 공지사항 건수를 구한다.
		model.addAttribute("totalCount", adminBoardService.getFreeboardNoticeCount());
		// 공지사항 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		model.addAttribute("list", adminBoardService.freeboardNoticeList(startNo, numOfPage));
		return "/adboard/noticeList";
	}
	// 자유게시판 공지사항 작성 GET
	@RequestMapping(value={"/writefreeboardNotice"}, method=RequestMethod.GET)
	private String writefreeboardNoticeGET(HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController writefreeboardNoticeGET().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		return "/adboard/noticeWrite";
	}
	// 자유게시판 공지사항 작성 POST
	@RequestMapping(value={"/writefreeboardNotice"}, method=RequestMethod.POST)
	private String writefreeboardNoticePOST(AdminBoardDTO adminBoardDTO) throws Exception {
		logger.info("AdminBoardController writefreeboardNoticePOST().....");
		adminBoardDTO.setTitle(commonUtils.htmlConverter(adminBoardDTO.getTitle()));
		adminBoardDTO.setContent(commonUtils.htmlConverter(adminBoardDTO.getContent()));
		adminBoardService.writefreeboardNotice(adminBoardDTO);
		return "redirect:/adboard/notice";
	}
	// 자유게시판 공지사항 수정 GET
	@RequestMapping(value={"/updatefreeboardNotice/{boardNo}"}, method=RequestMethod.GET)
	private String updatefreeboardNoticeGET(@PathVariable int boardNo,
				HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController updatefreeboardNoticeGET().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 게시글 번호에 해당하는 공지사항을 불러온다.
		model.addAttribute("detail", adminBoardService.freeboardDetail(boardNo));
		return "/adboard/noticeUpdate";
	}
	// 자유게시판 공지사항 수정 POST
	@RequestMapping(value={"/updatefreeboardNotice/{boardNo}"}, method=RequestMethod.POST)
	private String updatefreeboardNoticePOST(AdminBoardDTO adminBoardDTO) throws Exception {
		logger.info("AdminBoardController updatefreeboardNoticePOST().....");
		adminBoardDTO.setTitle(commonUtils.htmlConverter(adminBoardDTO.getTitle()));
		adminBoardDTO.setContent(commonUtils.htmlConverter(adminBoardDTO.getContent()));
		adminBoardService.updatefreeboardNotice(adminBoardDTO);
		return "redirect:/adboard/notice";
	}
	
	// 댓글 목록
	@RequestMapping(value = {"/comment/{viewTable}", "/comment/{viewTable}/{pageNum}"})
	public String adminCommentList(@PathVariable String viewTable, @PathVariable Optional<Integer> pageNum,
				HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController adminCommentList().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 댓글 건수를 구한다.
		// 댓글 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		if (viewTable.equals("all")) {
			model.addAttribute("totalCount", adminBoardService.getAdminCommentCount());
			model.addAttribute("list", adminBoardService.adminCommentList(startNo, numOfPage));
		} else if (viewTable.equals("classboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminCbCommentCount());
			model.addAttribute("list", adminBoardService.adminCbCommentList(startNo, numOfPage));
		} else if (viewTable.equals("freeboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminFbCommentCount());
			model.addAttribute("list", adminBoardService.adminFbCommentList(startNo, numOfPage));
		} else if (viewTable.equals("groupboard")) {
			model.addAttribute("totalCount", adminBoardService.getAdminGbCommentCount());
			model.addAttribute("list", adminBoardService.adminGbCommentList(startNo, numOfPage));
		}
		return "/adboard/commentList";
	}
	// 댓글 삭제
	@RequestMapping("/deleteComment/{viewTable}/{commentNo}")
	private String adminCommentDelete(@PathVariable String viewTable, @PathVariable int commentNo,
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminBoardController adminCommentDelete().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 댓글번호에 해당하는 댓글을 삭제 - 테이블별 구분
		if (viewTable.equals("classboard")) {
			adminBoardService.cbCommentDelete(commentNo);
		} else if (viewTable.equals("freeboard")) {
			adminBoardService.fbCommentDelete(commentNo);
		} else if (viewTable.equals("groupboard")) {
			adminBoardService.gbCommentDelete(commentNo);
		}
		return "redirect:/adboard/comment/all";
	}
	// 댓글 키워드 검색
	@RequestMapping(value={"/comment/search/{searchCode}/{keyword}/{viewTable}", "/comment/search/{searchCode}/{keyword}/{viewTable}/{pageNum}"})
	private String searchAdminComment(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable String viewTable,
				@PathVariable Optional<Integer> pageNum, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController searchAdminComment().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
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
		// viewTable에 따라 검색 테이블을 다르게한다.
		if (viewTable.equals("all")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminCommentCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchAdminCommentContent(keyword, startNo, numOfPage));
				break;
			case 2: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchAdminCommentCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchAdminCommentWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("classboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassCommentCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchClassCommentContent(keyword, startNo, numOfPage));
				break;
			case 2: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchClassCommentCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchClassCommentWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("freeboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeCommentCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchFreeCommentContent(keyword, startNo, numOfPage));
				break;
			case 2: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchFreeCommentCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchFreeCommentWriter(keyword, startNo, numOfPage));
				break;
			}
		} else if (viewTable.equals("groupboard")) {
			// 검색 결과의 전체 게시글 건수를 구하고
			// 목록 화면에 보여줄 데이터만 검색해와서 담는다.
			switch (searchCode) {
			case 1: //내용 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupCommentCountContent(keyword));
				model.addAttribute("list", adminBoardService.searchGroupCommentContent(keyword, startNo, numOfPage));
				break;
			case 2: //작성자 검색
				model.addAttribute("totalCount", adminBoardService.getSearchGroupCommentCountWriter(keyword));
				model.addAttribute("list", adminBoardService.searchGroupCommentWriter(keyword, startNo, numOfPage));
				break;
			}
		}
		return "/adboard/commentList";
	}
	
}
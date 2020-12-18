package com.edu.admin.cotroller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.PagingDTO;
import com.edu.admin.service.AdminBoardService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/adboard/*") // AdminController에서 공통적으로 사용될 url mapping
public class AdminBoardController {

	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER = LoggerFactory.getLogger(AdminBoardController.class);

	@Inject
	AdminBoardService adminBoardService;

	// 게시글 목록
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String getAdminBoard(Model model) throws Exception {
		LOGGER.info("adminController  admin/board().....");
		model.addAttribute("board", adminBoardService.boardListService());
		return "/adboard/board"; // => WEB-INF/views/admin/test2.jsp
	}
	
	// 게시글 상세보기
	@RequestMapping("/detail/{boardNo}")
	private String boardDetail(@PathVariable int boardNo, Model model) throws Exception {
		LOGGER.info("adminBaordController  /adboard/detail().....");

		model.addAttribute("detail", adminBoardService.boardDetailService(boardNo));

		return "/adboard/detail";
	}

	// 게시글 인서트 폼
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String boardInsertForm() throws Exception {
		LOGGER.info("adminBaordController  adboard/insert().....");
		return "/adboard/insert"; // => WEB-INF/views/admin/test2.jsp
	}
	
	// 게시글 인서트
	@RequestMapping(value = "/insertProc", method = RequestMethod.POST)
	private String boardInsertProc(HttpServletRequest request) throws Exception {
		LOGGER.info("adminBaordController  /adboard/insertProc().....");

		AdminBoardDTO board = new AdminBoardDTO();

		board.setTitle(request.getParameter("title"));
		board.setContent(request.getParameter("content"));
		board.setWriter(request.getParameter("writer"));

		adminBoardService.boardInsertService(board);

		return "redirect:/adboard/board";
	}
	
	// 게시글 수정폼 호출
	@RequestMapping("/update/{boardNo}") 
	private String boardUpdateForm(@PathVariable int boardNo, Model model) throws Exception {
		LOGGER.info("adminBaordController  /adboard//update/{boardNo}.....");

		model.addAttribute("detail", adminBoardService.boardDetailService(boardNo));

		return "update";
	}
	
	// 게시글 수정
	@RequestMapping("/updateProc")
	private int boardUpdateProc(HttpServletRequest request) throws Exception {
		LOGGER.info("adminBaordController  /adboard/updateProc().....");
		AdminBoardDTO board = (AdminBoardDTO) request.getParameterMap();

		return adminBoardService.boardUpdateService(board);
	}
	
	// 게시글 삭제
	@RequestMapping("/delete/{boardNo}")
	private String boardDelete(@PathVariable int boardNo) throws Exception {
		LOGGER.info("adminBaordController  /delete/{boardNo}.....");

		adminBoardService.boardDeleteService(boardNo);

		return "redirect:/adboard/board";
	}

	// 멤버 삭제
	@RequestMapping("/memberDelete/{memberId}")
	private String memberDelete(@PathVariable String memberId) throws Exception {
		LOGGER.info("adminBaordController /memberDelete/{memberId}.....");

		adminBoardService.memberDeleteService(memberId);

		return "redirect:/adboard/memberList";
	}
	
//	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
//	public String getMember(Model model) throws Exception {
//
//		model.addAttribute("memberList", adminBoardService.memberListService());
//
//		return "/adboard/memberList"; // => WEB-INF/views/admin/test2.jsp
//	}
	
	// 멤버 페이징
	@GetMapping("memberList")
	public String boardList(PagingDTO pagingDTO, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) throws Exception {
		LOGGER.info("adminBaordController /adbaord/memberList()....");

		int total = adminBoardService.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		pagingDTO = new PagingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("memberList", adminBoardService.memberListService());
		model.addAttribute("paging", pagingDTO);
		model.addAttribute("viewAll", adminBoardService.selectBoard(pagingDTO));
		
		return "/adboard/memberList";
	}

}

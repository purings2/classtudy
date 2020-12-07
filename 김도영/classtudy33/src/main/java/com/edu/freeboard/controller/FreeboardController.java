package com.edu.freeboard.controller;

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

import com.edu.freeboard.controller.FreeboardController;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.freeboard.service.FreeboardService;

@Controller
@RequestMapping("/community/")
public class FreeboardController {

	private static final Logger LOGGER = LoggerFactory.getLogger(FreeboardController.class);

	@Inject
	FreeboardService freeboardService;

	// 게시글 작성 GET
	@RequestMapping(value="/write", method=RequestMethod.GET)
	private String getWrite(HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("FreeboardController write GET....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/freeboard/write";
	}	
	// 게시글 작성 POST
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	private String postWrite(FreeboardDTO boardDTO, HttpSession session, Model model )throws Exception {
		LOGGER.info("FreeboardController write POST....." + boardDTO);
		if (session.getAttribute("member") != null) {
			freeboardService.write(boardDTO);
		}		
		model.addAttribute("게시글 등록이 완료되었습니다.");	
				
		return "redirect:/community/freeboard/all";		
	}	
	//게시글 목록
	@RequestMapping(value={"/freeboard/{viewCategory}", "/freeboard/{viewCategory}/{pageNum}"})
	private String freeboard(@PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, 
			 Model model, RedirectAttributes rttr)throws Exception {
		LOGGER.info("FreeboardController Freeboard().....");
		LOGGER.info("freeboardController freeboard() viewCategory : " + viewCategory);
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = viewCategory.equals("all") ? freeboardService.getBoardCount() : freeboardService.getBoardCount2(viewCategory);
		LOGGER.info("viewCategory1 : " + viewCategory);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 5;
		// 구한 값을 뷰 페이지로 보내준다
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 자유게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		if (viewCategory.equals("all")) {
			model.addAttribute("list", freeboardService.boardList(startNo, numOfPage));
			LOGGER.info("viewCategory all : " + viewCategory,"startNo : " + startNo,"numOfPage" + numOfPage);
		} else { // 말머리가 선택되면 선택된 말머리의 게시글만 보여준다.
			model.addAttribute("list", freeboardService.boardList2(viewCategory, startNo, numOfPage));
			LOGGER.info("viewCategory2 : " + viewCategory,"startNo : " + startNo,"numOfPage" + numOfPage);
		}			
		return "/freeboard/list";		
	}
	// 게시판 상세보기
	@RequestMapping(value={"/detail/{boardNo}", "/detail/{boardNo}/{str}"})
	private String detailBoard(@PathVariable int boardNo, @PathVariable Optional<String> str, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("FreeboardController detailBoard()....");
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		LOGGER.info("detailBoard() : " + freeboardService.boardDetail(boardNo));
		// boardNo에 해당하는 자료의 조회수를 1 증가 시킨다.
		freeboardService.addViews(boardNo);
		// boardNo에 해당하는 자료를 model에 담는다.
		model.addAttribute("detail", freeboardService.boardDetail(boardNo));
		// comment에 값이 있으면 commentList 위치로, 없으면 그냥 이동한다.
		if (str.isPresent()) {
			model.addAttribute("comment", "yes");
		} else {
			model.addAttribute("comment", "no");
		}
		return "/freeboard/detail";
	}
	// 게시글 수정 GET
	@RequestMapping(value="/update/{boardNo}", method = RequestMethod.GET)
	private String getUpdate(@PathVariable int boardNo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		LOGGER.info("FreeboardController getUpdate()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		LOGGER.info("BoardDTO : " + freeboardService.boardDetail(boardNo));
		model.addAttribute("detail", freeboardService.boardDetail(boardNo));
		return "/freeboard/update";
	}
	// 게시글 수정 POST
	@RequestMapping(value="/update/{boardNo}", method=RequestMethod.POST)
	private String postUpdate(FreeboardDTO boardDTO, HttpSession session) throws Exception {
		LOGGER.info("FreeboardController postUpdate()....");
		LOGGER.info("postUpdate() : " + boardDTO);
		freeboardService.boardUpdate(boardDTO);
		return "redirect:/community/detail/" + boardDTO.getBoardNo();
	}		
	// 게시글 삭제
	@RequestMapping(value="/delete/{boardNo}")
	private String delete(@PathVariable int boardNo) throws Exception {
		LOGGER.info("FreeboardController delete()....");
		freeboardService.boardDelete(boardNo);
		return "redirect:/community/freeboard/all";
	}
	// 게시글 좋아요
	@ResponseBody
	@RequestMapping(value="/like", method=RequestMethod.POST)
	private int like(int boardNo, String memberId) throws Exception {
		LOGGER.info("FreeboardController like()....");
		// 게시글 좋아요를 하기 위해 게시글 번호를 Service에게 넘겨준다.
		freeboardService.addLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 기록한다.
		freeboardService.writeLikes(boardNo, memberId);
		// 좋아요 후의 좋아요수를 가져와서 보낸다.
		int result = freeboardService.getLikes(boardNo);
		LOGGER.info("FreeboardController Return Value [" + result + "]");
		return result;
	}	
	// 게시글 좋아요 여부 확인
	@ResponseBody
	@RequestMapping(value="/likeCheck", method=RequestMethod.POST)
	private int likeCheck(int boardNo, String memberId) throws Exception {
		LOGGER.info("FreeboardController likeCheck()....");
		LOGGER.info("FreeboardController likeCheck() : " + boardNo + ", " + memberId);
		// 좋아요 여부를 확인하기 위해 게시글 번호, 아이디를 Service에게 넘겨준다.
		int result = freeboardService.likeCheck(boardNo, memberId);
		// 좋아요 테이블에서 값을 확인한 결과를 보낸다.
		return result;
	}	
	// 게시글 좋아요 취소
	@ResponseBody
	@RequestMapping(value="/deleteLike", method=RequestMethod.POST)
	private int deleteLike(int boardNo, String memberId) throws Exception {
		LOGGER.info("FreeboardController deleteLike()....");
		LOGGER.info("FreeboardController deleteLike() : " + boardNo + ", " + memberId);
		
		// 게시글 좋아요를 취소하기 위해 게시글 번호를 Service에게 넘겨준다.
		freeboardService.subtractLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 삭제한다.
		freeboardService.deleteLikes(boardNo, memberId);
		// 좋아요 취소 후의 좋아요수를 가져와서 보낸다.
		int result = freeboardService.getLikes(boardNo);
		LOGGER.info("FreeboardController Return Value [" + result + "]");	
		return result;
	}	
	// 게시글 검색(제목 또는 내용에 키워드가 들어간 글 찾기)
	@RequestMapping(value={"/search/{keyword}/{viewCategory}", "/search/{keyword}/{viewCategory}/{pageNum}"})
	private String search (@PathVariable String keyword, @PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, HttpSession session, Model model) throws Exception {
		LOGGER.info("FreeboardController search()....");
		LOGGER.info("FreeboardController search() : " + keyword);
		// List<FreeboardDTO> boardList = freeboardService.search("%" + keyword + "%");
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount = viewCategory.equals("all") ? freeboardService.getSearchCount("%" + keyword + "%") : freeboardService.getSearchCount2(viewCategory, "%" + keyword + "%");
		// 화면에 보여줄 게시글의 수
		int numOfPage = 10;
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("numOfPage", numOfPage);
		// 검색한 키워드를 뷰 페이지로 보내준다.
		model.addAttribute("nowKeyword", keyword);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 자유게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		if (viewCategory.equals("all")) {
			model.addAttribute("list", freeboardService.search("%" + keyword + "%", startNo, numOfPage));	
		} else { // 말머리가 선택되면 선택된 말머리의 게시글만 검색한다.
			model.addAttribute("list", freeboardService.search2("%" + keyword + "%", viewCategory, startNo, numOfPage));	
		}		
		return "/freeboard/list";		
	}

}


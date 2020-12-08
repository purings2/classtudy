package com.edu.groupboard.controller;

import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.common.CommonUtils;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록
@RequestMapping("/group/*") // GroupboardController에서 공통적으로 사용될 url mapping
public class GroupboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(GroupboardController.class);
	
	//@Inject
	//GroupboardService groupboardService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 게시판 목록 보기
	@RequestMapping(value={"/board/{viewGroup}", "/board/{viewGroup}/{pageNum}"})
	private String list(@PathVariable String viewGroup, @PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("GroupboardController list()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 그룹번호를 찾아 저장한다.
		int groupNo1 = member.getGroup1();
		int groupNo2 = member.getGroup2();
		int groupNo3 = member.getGroup3();
		// memberDTO에서 아이디를 찾아 저장한다.
		String memberId = member.getMemberId();
		logger.info("GroupboardController list(): " + memberId + "(" + groupNo1 + ", " + groupNo2 + ", " + groupNo3 + ")");
		
		if (viewGroup.equals("all")) {
			// 로그인한 회원이 하나 이상의 그룹에 속해있는지 검사한다.
			if ((groupNo1 == 1 || groupNo1 == 0) && (groupNo2 == 1 || groupNo2 == 0) && (groupNo3 == 1 || groupNo3 == 0)) {
				model.addAttribute("message", "하나 이상의 그룹에 가입하신 후 다시 시도해주세요.");
				return "/common/noAccess";
			}
		} else {
			// 그룹번호가 입력되면 입력된 그룹번호에 속해있는지 검사한다.
			int viewGroupNo = Integer.parseInt(viewGroup);
			if ((groupNo1 != viewGroupNo) && (groupNo2 != viewGroupNo) && (groupNo3 != viewGroupNo)) {
				model.addAttribute("message", "해당 그룹에 가입하신 후 다시 시도해주세요.");
				return "/common/noAccess";
			}
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		// 화면에 보여줄 전체 게시글 건수를 구하기. 
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		int totalCount;
		if (viewGroup.equals("all")) {
			totalCount = 0;
			//totalCount = groupboardService.getBoardCountAll(groupNo1, groupNo2, groupNo3);
		} else {
			totalCount = 0;
			//totalCount = groupboardService.getBoardCount(viewGroup);
		}
		// 화면에 보여줄 게시글의 수
		int numOfPage = 5;
		// 구한 값을 뷰 페이지로 보내준다.
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 그룹게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		model.addAttribute("list", null);
		/*
	model.addAttribute("list", 
		// 말머리가 선택되면 해당 게시글만 아니면 전체를 보여준다.
		viewCategory.equals("all") ? 
			groupboardService.boardListAll(groupNo1, groupNo2, groupNo3, startNo, numOfPage) :
			groupboardService.boardList(groupNo1, groupNo2, groupNo3, viewCategory, startNo, numOfPage));
		 */
		model.addAttribute("group", "yes");
		return "/board/listGB";
	}
}
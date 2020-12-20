package com.edu.groupboard.controller;

import java.util.ArrayList;
import java.util.List;
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

import com.edu.common.CommonUtils;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.service.GroupboardService;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록
@RequestMapping("/community/groupboard/*") // GroupboardController에서 공통적으로 사용될 url mapping
public class GroupboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(GroupboardController.class);
	
	@Inject
	GroupboardService groupboardService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 게시글 작성 GET
	@RequestMapping(value="/write", method=RequestMethod.GET)
	private String getWrite(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("GroupboardController write GET....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		model.addAttribute("viewGroup", session.getAttribute("viewGroup"));
		return "/groupboard/write";
	}
	// 게시글 작성 POST
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	private String postWrite(GroupboardDTO boardDTO, HttpSession session) throws Exception {
		logger.info("GroupboardController write POST....." + boardDTO);
		if (session.getAttribute("member") != null) {
			// session에서 memberDTO를 저장한다.
			MemberDTO member = (MemberDTO)session.getAttribute("member");
			// viewGroup이 1(그룹 없음)이면 첫번째 그룹번호로 바꿔준다.
			if (boardDTO.getGroupNo() == 1) {
				//logger.info("GroupboardController write POST : groupNo == 1");
				// 그룹번호와 이름을 저장한다.
				List<GrouplistDTO> groupList = new ArrayList<GrouplistDTO>();
				if (member.getGroup1() != 1 && member.getGroup1() != 0) {
					int groupNo1 = member.getGroup1();
					groupList.add(new GrouplistDTO(groupNo1, member.getGroupName1())); }
				if (member.getGroup2() != 1 && member.getGroup1() != 0) {
					int groupNo2 = member.getGroup2();
					groupList.add(new GrouplistDTO(groupNo2, member.getGroupName2())); }
				if (member.getGroup3() != 1 && member.getGroup1() != 0) {
					int groupNo3 = member.getGroup3();
				groupList.add(new GrouplistDTO(groupNo3, member.getGroupName3())); }
				boardDTO.setGroupNo(groupList.get(0).getGroupNo());
			}
			boardDTO.setTitle(commonUtils.htmlConverter(boardDTO.getTitle()));
			boardDTO.setContent(commonUtils.htmlConverter(boardDTO.getContent()));
			groupboardService.write(boardDTO);
		}
		return "redirect:/community/groupboard/" + boardDTO.getGroupNo();
	}
	
	// 게시판 목록 보기
	@RequestMapping(value={"/{viewGroup}", "/{viewGroup}/{pageNum}"})
	private String list(@PathVariable int viewGroup, @PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("GroupboardController list()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// 그룹번호와 이름을 저장한다.
		List<GrouplistDTO> groupList = new ArrayList<GrouplistDTO>();
		if (member.getGroup1() != 1 && member.getGroup1() != 0) {
			int groupNo1 = member.getGroup1();
			groupList.add(new GrouplistDTO(groupNo1, member.getGroupName1())); }
		if (member.getGroup2() != 1 && member.getGroup2() != 0) {
			int groupNo2 = member.getGroup2();
			groupList.add(new GrouplistDTO(groupNo2, member.getGroupName2())); }
		if (member.getGroup3() != 1 && member.getGroup3() != 0) {
			int groupNo3 = member.getGroup3();
			groupList.add(new GrouplistDTO(groupNo3, member.getGroupName3())); }
		model.addAttribute("groupList", groupList);
		
		// 로그인한 회원이 하나 이상의 그룹에 속해있는지 검사한다.
		if (groupList.size() == 0) {
			model.addAttribute("message", "그룹에 가입하신 후 다시 시도해주세요.");
			return "/common/noAccess";
		}
		// viewGroup이 1(그룹 없음)이면 첫번째 그룹을 보여주고
		// 다른 번호가 입력되면 입력된 그룹번호에 속해있는지 검사한다.
		int viewGroupNo = viewGroup;
		if (viewGroup == 1) {
			viewGroupNo =  groupList.get(0).getGroupNo();
		} else {
			boolean confirmed = false;
			for (int i = 0; i < groupList.size(); i++) {
				if (groupList.get(i).getGroupNo() == viewGroupNo) { confirmed = true; }
			}
			if (confirmed == false) {
				model.addAttribute("message", "해당 그룹원이 아닙니다.<br>그룹에 가입하신 후 다시 시도해주세요.");
				return "/common/noAccess";
			}
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 전체 게시글 건수 구하기
		// 그룹번호에 해당하는 게시글만 카운트한다.
		int totalCount = groupboardService.getBoardCount(viewGroupNo);
		model.addAttribute("totalCount", totalCount);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 13;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 그룹게시판 목록 보기 화면에 보여줄 데이터를 가져와서 담는다.
		model.addAttribute("list", groupboardService.boardList(viewGroupNo, startNo, numOfPage));
		return "/groupboard/list";
	}
	
	// 게시판 상세 보기
	@RequestMapping(value={"/detail/{boardNo}", "/detail/{boardNo}/{boardOption}"})
	private String detailBoard(@PathVariable int boardNo, @PathVariable Optional<String> boardOption, 
				Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("GroupboardController detailBoard()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// boardNo에 해당하는 자료의 조회수를 1 증가 시킨다.
		int isExist = groupboardService.addViews(boardNo);
		// boardNo에 해당하는 게시글이 없으면 
		if (isExist < 1) {
			model.addAttribute("message", "존재하지 않는 게시글입니다. 확인하시고 다시 이용해주세요.");
			return "/common/noAccess";
		}
		// boardNo에 해당하는 자료를 model에 담는다.
		model.addAttribute("detail", groupboardService.boardDetail(boardNo));
		// boardOption에 값이 있으면 값을 저장한다.
		String gbOption = boardOption.isPresent() ? boardOption.get() : "";
		// comment 옵션이 있으면 commentList 위치로 이동하기 위해 값을 설정한다.
		if (gbOption.contains("comment")) {
			model.addAttribute("comment", "yes");
		}
		return "/groupboard/detail";
	}
	
	// 게시글 수정 GET
	@RequestMapping(value="/update/{boardNo}", method=RequestMethod.GET)
	private String getUpdate(@PathVariable int boardNo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("GroupboardController getUpdate()....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		model.addAttribute("detail", groupboardService.boardDetail(boardNo));
		return "/groupboard/update";
	}
	// 게시글 수정 POST
	@RequestMapping(value="/update", method=RequestMethod.POST)
	private String postUpdate(GroupboardDTO boardDTO, HttpSession session) throws Exception {
		logger.info("GroupboardController postUpdate()....");
		boardDTO.setTitle(commonUtils.htmlConverter(boardDTO.getTitle()));
		boardDTO.setContent(commonUtils.htmlConverter(boardDTO.getContent()));
		groupboardService.update(boardDTO);
		return "redirect:/community/groupboard/detail/" + boardDTO.getBoardNo();
	}
	// 게시글 삭제
	@RequestMapping(value="/delete/{boardNo}")
	private String delete(@PathVariable int boardNo) throws Exception {
		logger.info("GroupboardController delete()....");
		groupboardService.delete(boardNo);
		return "redirect:/community/groupboard/1";
	}
	
	// 게시글 좋아요
	@ResponseBody
	@RequestMapping(value="/like", method=RequestMethod.POST)
	private int like(int boardNo, String memberId) throws Exception {
		logger.info("GroupboardController like()....");
		// 게시글 좋아요를 하기 위해 게시글 번호를 Service에게 넘겨준다.
		groupboardService.addLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 기록한다.
		groupboardService.writeLikes(boardNo, memberId);
		// 좋아요 후의 좋아요수를 가져와서 보낸다.
		int result = groupboardService.getLikes(boardNo);
		logger.info("GroupboardController Return Value [" + result + "]");
		return result;
	}
	// 게시글 좋아요 여부 확인
	@ResponseBody
	@RequestMapping(value="/likeCheck", method=RequestMethod.POST)
	private int likeCheck(int boardNo, String memberId) throws Exception {
		logger.info("GroupboardController likeCheck()....");
		// 좋아요 여부를 확인하기 위해 게시글 번호, 아이디를 Service에게 넘겨준다.
		int result = groupboardService.likeCheck(boardNo, memberId);
		// 좋아요 테이블에서 값을 확인한 결과를 보낸다.
		return result;
	}
	// 게시글 좋아요 취소
	@ResponseBody
	@RequestMapping(value="/deleteLike", method=RequestMethod.POST)
	private int deleteLike(int boardNo, String memberId) throws Exception {
		logger.info("GroupboardController deleteLike()....");
		// 게시글 좋아요를 취소하기 위해 게시글 번호를 Service에게 넘겨준다.
		groupboardService.subtractLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 삭제한다.
		groupboardService.deleteLikes(boardNo, memberId);
		// 좋아요 취소 후의 좋아요수를 가져와서 보낸다.
		int result = groupboardService.getLikes(boardNo);
		logger.info("GroupboardController Return Value [" + result + "]");
		return result;
	}
	
	// 게시글 검색 - 키워드가 들어간 글 찾기
	@RequestMapping(value={"/search/{searchCode}/{keyword}/{viewGroup}", "/search/{searchCode}/{keyword}/{viewGroup}/{pageNum}"})
	private String search(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable int viewGroup, @PathVariable Optional<Integer> pageNum, 
							HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("GroupboardController search()....");
		logger.info("GroupboardController search() : " + keyword);
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// 그룹번호와 이름을 저장한다.
		List<GrouplistDTO> groupList = new ArrayList<GrouplistDTO>();
		if (member.getGroup1() != 1 && member.getGroup1() != 0) {
			int groupNo1 = member.getGroup1();
			groupList.add(new GrouplistDTO(groupNo1, member.getGroupName1())); }
		if (member.getGroup2() != 1 && member.getGroup1() != 0) {
			int groupNo2 = member.getGroup2();
			groupList.add(new GrouplistDTO(groupNo2, member.getGroupName2())); }
		if (member.getGroup3() != 1 && member.getGroup1() != 0) {
			int groupNo3 = member.getGroup3();
			groupList.add(new GrouplistDTO(groupNo3, member.getGroupName3())); }
		model.addAttribute("groupList", groupList);
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
		// viewGroup이 1이면 첫번째 그룹번호로 groupNo을 설정한다.
		if (viewGroup == 1) {
			viewGroup = groupList.get(0).getGroupNo(); }
		// 화면에 보여줄 전체 게시글 건수를 구하고
		// 그룹게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
		case 1: //제목+내용 검색
			model.addAttribute("totalCount", groupboardService.getSearchCountAll(viewGroup, "%" + keyword + "%"));
			model.addAttribute("list", groupboardService.searchAll(viewGroup, "%" + keyword + "%", startNo, numOfPage));
			break;
		case 2: //제목 검색
			model.addAttribute("totalCount", groupboardService.getSearchCountTitle(viewGroup, "%" + keyword + "%"));
			model.addAttribute("list", groupboardService.searchTitle(viewGroup, "%" + keyword + "%", startNo, numOfPage));
			break;
		case 3: //내용 검색
			model.addAttribute("totalCount", groupboardService.getSearchCountContent(viewGroup, "%" + keyword + "%"));
			model.addAttribute("list", groupboardService.searchContent(viewGroup, "%" + keyword + "%", startNo, numOfPage));
			break;
		case 4: //작성자 검색
			model.addAttribute("totalCount", groupboardService.getSearchCountWriter(viewGroup, "%" + keyword + "%"));
			model.addAttribute("list", groupboardService.searchWriter(viewGroup, "%" + keyword + "%", startNo, numOfPage));
			break;
		}
		return "/groupboard/list";
	}
	
}
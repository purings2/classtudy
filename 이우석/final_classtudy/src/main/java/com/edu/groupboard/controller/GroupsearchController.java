package com.edu.groupboard.controller;

import java.util.List;


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
import com.edu.member.domain.MemberDTO;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.domain.GroupsearchDTO;
import com.edu.groupboard.service.GroupsearchService;
import com.edu.member.service.MemberService;

@Controller
@RequestMapping("/community/groupsearch/*")
public class GroupsearchController {
	
	@Inject
	private GroupsearchService groupsearchService;

	@Inject
	MemberService memberService;
	
	@Inject
	CommonUtils commonUtils;
	
	
	private static final Logger LOGGER
		= LoggerFactory.getLogger(GroupsearchController.class);
	
	@RequestMapping(value="/searchList", method=RequestMethod.GET)
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
			
		List<GroupsearchDTO> groupList = null;
		groupList = groupsearchService.groupList();
		LOGGER.info("CommunityController groupList : " + groupList);
		model.addAttribute("List",groupList);
		return "/groupboard/searchList";
	}
	
	//게시물 작성 GET
	@RequestMapping(value="/groupInsert", method = RequestMethod.GET)
	public String getGroupInsert() throws Exception{
		LOGGER.info("groupsearchController getInsert().....");
		return "/groupboard/groupInsert";
	}
	//게시물 작성 POST
	@RequestMapping(value="/groupInsert", method = RequestMethod.POST)
	public String groupInsertProc(GroupsearchDTO boardDTO, GrouplistDTO grouplistDTO, HttpServletRequest request)throws Exception{
		LOGGER.info("groupsearchController POSTInsertProc().....");
		
		String groupName = request.getParameter("groupName");
		grouplistDTO.setGroupNo(0);
		grouplistDTO.setGroupName(groupName);
		
		groupsearchService.groupListInsert(grouplistDTO);
		boardDTO.setGroupNo(grouplistDTO.getGroupNo());
		
		groupsearchService.groupInsert(boardDTO);
	return "redirect:/community/groupsearch/searchList";
	}
	
	//게시물삭 제 번호에 해당하는 자료를 삭제한다.
	@RequestMapping("/delete/{boardNo}")
	private String boardDelete(@PathVariable int boardNo) throws Exception {
		groupsearchService.groupDeleteService(boardNo);
		return "redirect:/community/groupsearch/searchList";
	}

	
	//게시글 Join
	@RequestMapping("/join")
	private String insertJoin(int groupNo , HttpSession session) throws Exception {
		LOGGER.info("insertJoin() Start");
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		LOGGER.info("memberId :"+member.getMemberId());
		LOGGER.info("Group1 :"+member.getGroup1());
		LOGGER.info("Group2 :"+member.getGroup2());
		LOGGER.info("Group3 :"+member.getGroup3());
		
		if(member.getGroup1() == 1 && groupNo != member.getGroup1() && groupNo != member.getGroup2() && groupNo != member.getGroup3()){
			groupsearchService.joinGroup1(groupNo, member.getMemberId());
			LOGGER.info("insertGroup1Controller() Start");
		} else if (member.getGroup2() == 1 && groupNo != member.getGroup2() && groupNo != member.getGroup1() && groupNo != member.getGroup3()) {
			groupsearchService.joinGroup2(groupNo, member.getMemberId());
			LOGGER.info("insertGroup2Controller() Start");
		} else if (member.getGroup3() == 1 && groupNo != member.getGroup3() && groupNo != member.getGroup1() && groupNo != member.getGroup2()) {
			groupsearchService.joinGroup3(groupNo, member.getMemberId());
			LOGGER.info("insertGroup3Controller() Start");
		} else {
			LOGGER.info("insertGroupElseController() Start");
		}
/*		
		if(member.getGroup1() == 1){
			 service.joinGroup1(groupNo, member.getMemberId());
			 LOGGER.info("insertGroup1Controller() Start");
		} else if (member.getGroup2() == 1) {
			 service.joinGroup2(groupNo, member.getMemberId());
			 LOGGER.info("insertGroup2Controller() Start");
		} else if (member.getGroup3() == 1) {
			 service.joinGroup3(groupNo, member.getMemberId());
			 LOGGER.info("insertGroup3Controller() Start");
		} else {
			 LOGGER.info("insertGroupElseController() Start");
		}
*/
		 /*		
		if(group1 == 1 || group2== 1 || group3 == 1) {
		      if(group1==groupNo || group1==groupNo || group1==groupNo) {
		         if(confirm("확인 멘트") == false) {
		            return false;
		         } else {
		            member에서 클릭한그룹번호와 일치하는 그룹번호를 1로 변경;
		         }         
		      }
		   }
		}
	*/
		return "redirect:/community/groupsearch/searchList";
	}
/*		
	게시글 join 여부 확인
	@ResponseBody
	@RequestMapping(value="/joinCheck", method=RequestMethod.POST)
	public int joinCheck(int groupNo, HttpSession session, HttpServletResponse response) throws Exception {
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		LOGGER.info("GroupboardController joinCheck()...." + member.getMemberId());
		LOGGER.info("GroupboardController joinCheck() : " + groupNo);
		// 좋아요 여부를 확인하기 위해 게시글 번호, 아이디를 Service에게 넘겨준다.
		int result = service.joinCheck(groupNo, member.getMemberId());
		// 좋아요 테이블에서 값을 확인한 결과를 보낸다.
		return result;
	}
*/
/*
// 게시글 검색(제목 또는 내용에 키워드가 들어간 글 찾기)
	@RequestMapping(value={"/search/{searchCode}/{keyword}/{viewCategory}", "/search/{searchCode}/{keyword}/{viewCategory}/{pageNum}"})
	private String search (@PathVariable int searchCode, @PathVariable String keyword, @PathVariable String viewCategory, @PathVariable Optional<Integer> pageNum, Model model) throws Exception {
		LOGGER.info("GroupboardController search()....");
		LOGGER.info("GroupboardController search() : " + keyword);
		// 검색한 키워드를 뷰 페이지로 보내준다.
		model.addAttribute("nowKeyword", keyword);
		// 키워드에 특수문자가 있으면 치환
		keyword = commonUtils.htmlConverter(keyword);
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 게시글의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 게시글 건수를 구하기
		// 말머리가 있으면 해당하는 게시글만 카운트한다.
		if (viewCategory.equals("all")) { viewCategory = "%"; } //말머리 전체
		// 자유게시판 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
			case 1: //제목+내용 검색
				model.addAttribute("totalCount", groupsearchService.getSearchCountAll("%" + keyword + "%", viewCategory));
				model.addAttribute("list", groupsearchService.searchAll("%" + keyword + "%", startNo, numOfPage, viewCategory));
				break;
			case 2: //제목 검색
				model.addAttribute("totalCount", groupsearchService.getSearchCountTitle("%" + keyword + "%", viewCategory));
				model.addAttribute("list", groupsearchService.searchTitle("%" + keyword + "%", startNo, numOfPage, viewCategory));
				break;
			case 3: //내용 검색
				model.addAttribute("totalCount", groupsearchService.getSearchCountContent("%" + keyword + "%", viewCategory));
				model.addAttribute("list", groupsearchService.searchContent("%" + keyword + "%", startNo, numOfPage, viewCategory));
				break;
			case 4: //작성자 검색
				model.addAttribute("totalCount", groupsearchService.getSearchCountWriter("%" + keyword + "%", viewCategory));
				model.addAttribute("list", groupsearchService.searchWriter("%" + keyword + "%", startNo, numOfPage, viewCategory));
				break;
		}
		//int totalCount = viewCategory.equals("all") ? freeboardService.getSearchCountAll("%" + keyword + "%") : freeboardService.getSearchCount(viewCategory, "%" + keyword + "%");
		/*
		if (viewCategory.equals("all")) {
			model.addAttribute("list", freeboardService.searchAll("%" + keyword + "%", startNo, numOfPage));
		} else { // 말머리가 선택되면 선택된 말머리의 게시글만 검색한다.
			model.addAttribute("list", freeboardService.search("%" + keyword + "%", viewCategory, startNo, numOfPage));
		}
		*/
		// 게시판 상단에 공지사항 출력
		// 공지사항 개수를 카운트한다.
/*		int noticeCount = freeboardService.getNoticeCount();
		model.addAttribute("noticeCount", noticeCount);
		// 처음에 출력할 공지사항 개수
		int numOfNotice = 3;
		model.addAttribute("numOfNotice", numOfNotice);
		// 처음에 보여지는 공지사항 목록
		model.addAttribute("noticeListFirst", freeboardService.boardListNoticeFirst(numOfNotice));
		// 더보기 눌렀을 때 보여지는 공지사항 목록
		model.addAttribute("noticeList", freeboardService.boardListNotice(numOfNotice, noticeCount));
		return "/freeboard/list";
	}
*/
} // End - public class CommunityController
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

import com.edu.member.domain.MemberDTO;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.domain.GroupsearchDTO;
import com.edu.groupboard.service.GroupsearchService;
import com.edu.member.service.MemberService;

@Controller
@RequestMapping("/community/groupsearch/*")
public class GroupsearchController {
	
	@Inject
	private GroupsearchService service;

	@Inject
	MemberService memberService;
	
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
		groupList = service.groupList();
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
		
		service.groupListInsert(grouplistDTO);
		boardDTO.setGroupNo(grouplistDTO.getGroupNo());
		
		service.groupInsert(boardDTO);
	return "redirect:/community/groupsearch/searchList";
	}
	
	//글 번호에 해당하는 자료를 삭제한다.
	@RequestMapping("/delete/{boardNo}")
	private String boardDelete(@PathVariable int boardNo) throws Exception {
		service.boardDeleteService(boardNo);
		return "redirect:/community/groupsearch/searchList";
	}
	
	//mygroup
//	@RequestMapping(value="/mygroup", method=RequestMethod.GET)
//	public void getmyGroupBoardList(Model model) throws Exception {
//		LOGGER.info("CommunityController getGroupBoardList().....");
//		
//	}
	
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
			service.joinGroup1(groupNo, member.getMemberId());
			LOGGER.info("insertGroup1Controller() Start");
		} else if (member.getGroup2() == 1 && groupNo != member.getGroup2() && groupNo != member.getGroup1() && groupNo != member.getGroup3()) {
			 service.joinGroup2(groupNo, member.getMemberId());
			LOGGER.info("insertGroup2Controller() Start");
		} else if (member.getGroup3() == 1 && groupNo != member.getGroup3() && groupNo != member.getGroup1() && groupNo != member.getGroup2()) {
			 service.joinGroup3(groupNo, member.getMemberId());
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
		return "redirect:/community/groupsearch/searchList";
	}
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
	

} // End - public class CommunityController
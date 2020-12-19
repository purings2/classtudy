package com.edu.member.controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.admin.domain.LectureDTO;
import com.edu.classboard.domain.CbcommentDTO;
import com.edu.classboard.domain.ClassboardDTO;
import com.edu.common.CommonUtils;
import com.edu.freeboard.domain.FbcommentDTO;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.member.domain.MemberDTO;
import com.edu.member.domain.PointDTO;
import com.edu.member.domain.ResumeDTO;
import com.edu.member.service.MemberService;
import com.edu.member.service.PointService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/member/*") // MemberController에서 공통적으로 사용될 url mapping
public class MemberController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER = LoggerFactory.getLogger(MemberController.class);
	
	// 컨트롤러 => 서비스 => Mapper 순서로!!
	//@Resource(name="com.edu.service.MemberService")
	@Inject
	MemberService memberService;
	
	// 공통으로 사용하는 메서드가 들어있는 클래스
	@Inject
	CommonUtils commonUtils;
	
	// 로그인에 따른 포인트 지급을 위해 pointService를 주입시킨다.
	@Inject
	PointService pointService;
	
	// 회원가입 GET : 회원가입 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/member/register으로 호출한다.
	@RequestMapping(value="/register", method=RequestMethod.GET)
	private String getRegister() throws Exception {
		LOGGER.info("MemberController getRegister().....");
		return "/member/register"; // => WEB-INF/views/member/register.jsp
	}
	
	// 회원가입 POST : 회원가입에 필요한 자료를 가지고 회원가입 요청이 들어오면
	@RequestMapping(value="/register", method=RequestMethod.POST)
	private String postRegister(MemberDTO memberDTO, HttpServletRequest request, Model model) throws Exception {
		LOGGER.info("MemberController postRegister().....");
		
		/*
		// 생년월일 XXXXXXXX 형식으로 변환
		String birthYear = request.getParameter("birthYear");
		String birthMonth = request.getParameter("birthMonth");
		String birthDay = request.getParameter("birthDay");
		String dateOfBirth = birthYear + birthMonth + birthDay;
		memberDTO.setDateOfBirth(dateOfBirth);
		*/
		
		// 전화번호 01X-XXXX-XXXX 형식으로 변환
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1 + "-" + tel2 + "-" + tel3;
		memberDTO.setTel(tel);
		
		// 상세주소에 특수문자 치환
		memberDTO.setAddressDetail(commonUtils.htmlConverter(memberDTO.getAddressDetail()));
		
		// 회원아이디가 존재하는지 검사한다.
		// 데이터가 존재하면 1을 리턴하고 아니면 0을 리턴하는 idCheck메서드를 MemberService에 만든다.
		int result = memberService.idCheck(memberDTO);
		LOGGER.info("MemberController Return Count[" + result + "].....");
		
		if(result >= 1) {
			return "/member/register";
		} else {
			memberService.insertMember(memberDTO);
		}
		// 입력한 강의번호로 관리자에게 확인 신청하기
		// 확인 전까지 회원정보에는 저장되는 강의번호는 기본값임
		memberService.registerLecture(memberDTO.getMemberId(), memberDTO.getLectureNo());
		
		return "redirect:/member/login";
	}	
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	private int idCheck(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberController : " + memberDTO);
		
		//아이디 중복 검사를 하기 위해서 memberDTO를 Service에게 넘겨준다.
		int result = memberService.idCheck(memberDTO);
		LOGGER.info("MemberController Return Value [" + result + "]");
		
		return result;
	}
	
	// 강의번호 검색 팝업창 띄우기
	@RequestMapping(value="/openLecturePopup")
	private String openLecturePopup() throws Exception {
		LOGGER.info("MemberController openLecturePopup().....");
		return "/member/lectureList";
	}
	
	// 강의번호 검색
	@ResponseBody
	@RequestMapping(value="/search/{keyword}")
	private List<LectureDTO> search(@PathVariable String keyword, Model model) throws Exception {
		LOGGER.info("MemberController search() : " + keyword);
		// 키워드에 특수문자가 있으면 치환
		keyword = commonUtils.htmlConverter(keyword);
		// 화면에 보여줄 데이터를 검색해와서 담는다.
		return memberService.search("%" + keyword + "%");
	}
	
	// 로그인 GET : 로그인 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/member/login으로 호출한다.
	@RequestMapping(value="/login", method=RequestMethod.GET)
	private String getLogin() throws Exception {
		LOGGER.info("MemberController getLogin().....");
		return "/member/login"; // => WEB-INF/views/member/login.jsp
	}
	
	// 로그인 POST : 로그인에 필요한 자료를 가지고 로그인 요청이 들어오면
	// DB에 확인하여 정확한 정보이면 세션을 발급해주고, 아니라면 msg를 만들어서 보내준다.
	// RedirectAttributes를 사용하면 redirect로 보내지만 값을 같이 보낼 수 있다.
	@RequestMapping(value="/login", method=RequestMethod.POST)
	private String login(MemberDTO memberDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		LOGGER.info("MemberController login POST.....");
		
		HttpSession session = req.getSession();
		//LOGGER.info("MemberController login POST session : " + session);
		
		//넘겨받은 회원정보를 가지고 서비스에게 의뢰한다.
		MemberDTO login = memberService.login(memberDTO);
		LOGGER.info("MemberController Return Value : " + login);
		
		//////////////////////////////////////////////////////////
		// 해당하는 회원의 정보가 없으면
		if(login == null) {
			session.setAttribute("member", null);
			
			//rttr.addAttribute("msg", false)를 사용하면, 변수명과 값이 주소에 노출된다.
			//rttr.addAttribute("msg", false);
			
			//RedirectAttributes를 사용하여 변수명과 주소값을 노출시키지 않고 사용한다.
			rttr.addFlashAttribute("msg", false);
		} else {
			//해당하는 회원의 정보가 있으면
			session.setAttribute("member", login);
			// 넘겨받은 회원정보에서 memberId값을 추출한다.
			String memberId = login.getMemberId();
			// 오늘 로그인으로 포인트를 지급 받았는지 확인하는 작업을 서비스에게 의뢰한다.
			String loginPointContent = "출석 포인트";
			int loginPointCheck = pointService.isTodayPointCheck(memberId, loginPointContent);
			// 오늘 로그인으로 포인트를 지급 받지 않았다면
			// 아래와 같은 내용으로 1포인트 지급해준다.
			// (count값이 0보다 크면 이미 포인트를 지급 받은 것)
			if (loginPointCheck == 0) {
				// 포인트 객체에 내용 입력
				PointDTO pointDTO = new PointDTO();
				pointDTO.setContent(loginPointContent);
				pointDTO.setMember(memberId);
				pointDTO.setChangeVal(1);
				// pointDTO 내용으로 포인트 지급
				pointService.addPoint(pointDTO);
			}
		}
		return "redirect:/member/login";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	private String logout(HttpSession session) throws Exception {
		LOGGER.info("MemberController logout().....");
		
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/member/login";
	}
	
	// 수정할 화면을 보여주세요. 라는 회원정보 수정 요청이 들어왔다.
	// 회원정보 수정 GET
	@RequestMapping(value="/memberUpdate", method=RequestMethod.GET)
	private String memberUpdateView(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		LOGGER.info("MemberController memberUpdateView().....");
		
		// MemberDTO를 저장하기 위한 변수 선언
		MemberDTO memberDTO = null;
		String tel = "", tel1 = "", tel2 = "", tel3 = "";
		// 세션에 MemberDTO가 있는지 확인하고 있으면 저장한다.
		if(session.getAttribute("member") != null) {
			memberDTO = (MemberDTO)session.getAttribute("member");
			// member에 담긴 전화번호를 저장
			tel = memberDTO.getTel();
			// 전화번호를 tel1, tel2, tel3로 나눠서 저장
			tel1 = tel.substring(0, 3); //첫 세자리 저장
			tel = tel.substring(4); //뒷 번호들만 남기기
			tel2 = tel.substring(0, tel.lastIndexOf("-"));  //나머지에서 '-' 앞을 저장
			tel3 = tel.substring(tel.lastIndexOf("-") + 1); //나머지에서 '-' 뒤를 저장
			// tel1, tel2, tel3를 model에 담아서 보낸다.
			model.addAttribute("tel1", tel1);
			model.addAttribute("tel2", tel2);
			model.addAttribute("tel3", tel3);
		} else {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		
		return "/member/memberUpdate";
	}
	
	// 회원정보 수정 POST
	@RequestMapping(value="/memberUpdate", method=RequestMethod.POST)
	private String memberUpdate(MemberDTO memberDTO, HttpSession session, HttpServletRequest request) throws Exception {
		LOGGER.info("MemberController memberUpdate().....");
		
		// 전화번호 01X-XXXX-XXXX 형식으로 변환
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1 + "-" + tel2 + "-" + tel3;
		memberDTO.setTel(tel);
		
		// 상세주소에 특수문자 치환
		memberDTO.setAddressDetail(commonUtils.htmlConverter(memberDTO.getAddressDetail()));
		
		memberService.memberUpdate(memberDTO);
		
		// 회원정보를 수정하면 다시 로그인하도록 세션을 만료시킨다.
		session.invalidate();
		
		return "/member/login";
	}
	
	// 회원 탈퇴 GET
	@RequestMapping(value="/memberDelete", method=RequestMethod.GET)
	private String memberDeleteView() throws Exception {
		LOGGER.info("MemberController memberDeleteView GET.....");
		return "/member/memberDelete";
	}
	
	// 회원 탈퇴 POST
	@RequestMapping(value="/memberDelete", method=RequestMethod.POST)
	private String memberDelete(MemberDTO memberDTO, HttpSession session, Model model) throws Exception {
		LOGGER.info("MemberController memberDelete POST.....");
		
		// 세션에 들어있는(=DB에 있는 정보) member정보를 가져와서 member변수에 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		// 세션에 들어있는 비밀번호를 변수에 저장한다.		
		String sessionPasswd = member.getPasswd();
		
		// 사용자가 입력한 비밀번호가 매개변수로 들어오는 memberDTO에 들어있는 비밀번호이다.
		String memberDTOPasswd = memberDTO.getPasswd();
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞지 않으면
		// 회원 탈퇴 화면으로 msgDelete에 fail를 담아서 이동한다. 
		if( !(sessionPasswd.equals(memberDTOPasswd)) ) {
			model.addAttribute("msgDelete", "fail");
			return "/member/memberDelete";
		} 
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞으면
		// 회원 탈퇴 작업 => Service에게 회원탈퇴작업을 시킨다.
		memberService.memberDelete(memberDTO);
		session.invalidate();
		
		return "redirect:/member/login";
	}
	
	// 마이페이지
	@RequestMapping(value="/myPage")
	private String myPage(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		LOGGER.info("MemberController myPage().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		// memberDTO에서 아이디를 찾아 저장한다.
		String memberId = member.getMemberId();
		LOGGER.info("MemberController myPage() memberId : " + memberId);
		// 그룹번호와 이름을 저장한다.
		List<GrouplistDTO> groupList = new ArrayList<GrouplistDTO>();
		if (member.getGroup1() != 1 && member.getGroup1() != 0) {
			groupList.add(new GrouplistDTO(member.getGroup1(), member.getGroupName1())); }
		if (member.getGroup2() != 1 && member.getGroup1() != 0) {
			groupList.add(new GrouplistDTO(member.getGroup2(), member.getGroupName2())); }
		if (member.getGroup3() != 1 && member.getGroup1() != 0) {
			groupList.add(new GrouplistDTO(member.getGroup3(), member.getGroupName3())); }
		model.addAttribute("groupList", groupList);
		LOGGER.info("groupList: " + groupList);
		
		// 마이포인트에 포인트 내역을 출력
		// 포인트 내역 개수를 카운트한다.
		int pointListCount = memberService.getPointListCount(memberId);
		model.addAttribute("pointListCount", pointListCount);
		// 처음에 출력할 포인트 내역 개수
		int numOfPointList = 5;
		model.addAttribute("numOfPointList", numOfPointList);
		// 처음에 보여줄 포인트 내역 가져오기
		model.addAttribute("pointListFirst", memberService.pointListFirst(memberId, numOfPointList));
		// 더보기 아래로 보여줄 포인트 내역 가져오기
		model.addAttribute("pointListSecond", memberService.pointListSecond(memberId, numOfPointList, pointListCount));
		// 현재 총 포인트 구하기
		model.addAttribute("myPointSum", memberService.getMyPointSum(memberId));
		
		// 마이적립금에 적립금 내역을 출력
		// 적립금 내역 개수를 카운트한다.
		int rewardListCount = memberService.getRewardListCount(memberId);
		model.addAttribute("rewardListCount", rewardListCount);
		// 처음에 출력할 적립금 내역 개수
		int numOfRewardList = 5;
		model.addAttribute("numOfRewardList", numOfRewardList);
		// 처음에 보여줄 적립금 내역 가져오기
		model.addAttribute("rewardListFirst", memberService.rewardListFirst(memberId, numOfRewardList));
		// 더보기 아래로 보여줄 적립금 내역 가져오기
		model.addAttribute("rewardListSecond", memberService.rewardListSecond(memberId, numOfRewardList, rewardListCount));
		// 현재 총 적립금 구하기
		model.addAttribute("myRewardSum", memberService.getMyRewardSum(memberId));
		return "/member/myPage";
	}
	
	// 마이페이지 활동내역 - 출석여부 확인
	@ResponseBody
	@RequestMapping(value="/checkTodayStatus")
	private int checkTodayStatus(HttpSession session, String memberId, String today) throws Exception {
		//LOGGER.info("MemberController checkTodayStatus().....");
		// 해당날짜의 포인트 적립내역 개수를 확인
		return memberService.checkTodayStatus(memberId, today + " %");
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(클래스게시판)
	@ResponseBody
	@RequestMapping(value="/classboardToday")
	private List<ClassboardDTO> classboardToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController classboardToday().....");
		return memberService.classboardToday(memberId, today + "%");
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(자유게시판)
	@ResponseBody
	@RequestMapping(value="/freeboardToday")
	private List<FreeboardDTO> freeboardToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController freeboardToday().....");
		return memberService.freeboardToday(memberId, today + "%");
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 게시글(그룹게시판)
	@ResponseBody
	@RequestMapping(value="/groupboardToday")
	private List<GroupboardDTO> groupboardToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController groupboardToday().....");
		return memberService.groupboardToday(memberId, today + "%");
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(클래스게시판)
	@ResponseBody
	@RequestMapping(value="/classboardCommentToday")
	private List<CbcommentDTO> classboardCommentToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController classboardCommentToday().....");
		return memberService.classboardCommentToday(memberId, today + "%");
	}
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(자유게시판)
	@ResponseBody
	@RequestMapping(value="/freeboardCommentToday")
	private List<FbcommentDTO> freeboardCommentToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController freeboardCommentToday().....");
		return memberService.freeboardCommentToday(memberId, today + "%");
	}
	/*
	// 마이페이지 활동내역 - 특정 날짜에 작성한 댓글(그룹게시판)
	@ResponseBody
	@RequestMapping(value="/groupboardCommentToday")
	private List<GbcommentDTO> groupboardCommentToday(String memberId, String today) throws Exception {
		LOGGER.info("MemberController groupboardCommentToday().....");
		return memberService.groupboardCommentToday(memberId, today + "%");
	}
	*/
	
	// 마이페이지 내가 쓴 글 - 클래스게시판
	@ResponseBody
	@RequestMapping(value="/classboardList")
	private List<ClassboardDTO> classboardList(String memberId) throws Exception {
		LOGGER.info("MemberController classboardList().....");
		return memberService.classboardList(memberId);
	}
	// 마이페이지 내가 쓴 글 - 자유게시판
	@ResponseBody
	@RequestMapping(value="/freeboardList")
	private List<FreeboardDTO> freeboardList(String memberId) throws Exception {
		LOGGER.info("MemberController freeboardList().....");
		return memberService.freeboardList(memberId);
	}
	// 마이페이지 내가 쓴 글 - 그룹게시판
	@ResponseBody
	@RequestMapping(value="/groupboardList")
	private List<GroupboardDTO> groupboardList(String memberId) throws Exception {
		LOGGER.info("MemberController groupboardList().....");
		return memberService.groupboardList(memberId);
	}

	// 이력서 & portfolio main
	@RequestMapping(value={"/portfolio/{memberId}"})
	private String portfolioList(@PathVariable String memberId, HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		LOGGER.info("MemberController portfolioList().....");
		// 세션에 MemberDTO가 있는지 확인하고 있으면 저장한다.
		if(session.getAttribute("member") != null) {
			session.getAttribute("member");
		} else {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO,ResumeDTO를 저장한다.
		//MemberDTO member = (MemberDTO)session.getAttribute("member");
		ResumeDTO resume = (ResumeDTO)session.getAttribute("resume");
		//memberId = member.getMemberId();
		model.addAttribute("list",memberService.resumeList(memberId));
		return "/member/portfolio";
	}

	// 이력서 작성  GET
	@RequestMapping(value = "/resume", method = RequestMethod.GET)
	private String resume(HttpSession session, RedirectAttributes rttr, Model model) throws Exception{
		LOGGER.info("MemberController resume GET...");
		
		// MemberDTO를 저장하기 위한 변수 선언
		MemberDTO memberDTO = null;
		// 세션에 MemberDTO가 있는지 확인하고 있으면 저장한다.
		if(session.getAttribute("member") != null) {
			memberDTO = (MemberDTO)session.getAttribute("member");
		} else {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		return "/member/resume";
	}
	// 이력서 작성POST
	@RequestMapping(value = "/resume", method = RequestMethod.POST)
	private String resume(ResumeDTO resumeDTO ,HttpSession session,Model model, HttpServletRequest request, RedirectAttributes rttr) throws Exception{
		LOGGER.info("MemberController resume POST.....");
				
		// 세션에 MemberDTO가 있는지 확인하고 있으면 저장한다.
		if(session.getAttribute("member") != null) {
			session.getAttribute("member");
		} else {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		// session에서 memberDTO를 저장한다.
		ResumeDTO resume = (ResumeDTO)session.getAttribute("resume");

		memberService.resumeWriter(resumeDTO);


		// 이력서 writer에 해당하는 boardNo찾기
		int boardNo = memberService.selectBoardNo(resumeDTO.getWriter());
		LOGGER.info("boardNo : " + boardNo);

		return "redirect:/member/resumeView/" + boardNo;
	}
	// 이력서 보기
	@RequestMapping(value = "/resumeView/{boardNo}", method = RequestMethod.GET)
	private String resumeView(@PathVariable int boardNo ,HttpSession session, Model model, RedirectAttributes rttr) throws Exception{
		LOGGER.info("MemberController resumeView().....");

		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("member") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/member/login";
		}
		LOGGER.info("resumeView() : ResumeDTO :" + 	memberService.resumeView(boardNo));
		// boardNo에 해당하는 자료를 model에 담는다.
		model.addAttribute("resume", memberService.resumeView(boardNo));
		return "/member/resumeView";
	}
}

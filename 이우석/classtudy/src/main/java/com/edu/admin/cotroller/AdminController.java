package com.edu.admin.cotroller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.admin.domain.AcademyDTO;
import com.edu.admin.domain.AdminDTO;
import com.edu.admin.domain.LectureDTO;
import com.edu.admin.mapper.AdminMapper;
import com.edu.admin.service.AdminBoardService;
import com.edu.admin.service.AdminService;
import com.edu.common.CommonUtils;
import com.edu.common.service.MainService;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/admin/*") // AdminController에서 공통적으로 사용될 url mapping
public class AdminController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	@Inject
	AdminBoardService adminBoardService;
	
	@Inject
	MainService mainService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 메인 화면
	@RequestMapping(value="/", method=RequestMethod.GET)
	private String main(Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController main().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		return "/admin/main";
	}
	
	// 로그인 GET : 로그인 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/admin/login으로 호출한다.
	@RequestMapping(value="/login", method=RequestMethod.GET)
	private String getLogin() throws Exception {
		logger.info("AdminController getLogin().....");
		return "/admin/login"; // => WEB-INF/views/admin/login.jsp
	}
	// 로그인 POST : 로그인에 필요한 자료를 가지고 로그인 요청이 들어오면
	// DB에 확인하여 정확한 정보이면 세션을 발급해주고, 아니라면 msg를 만들어서 보내준다.
	// RedirectAttributes를 사용하면 redirect로 보내지만 값을 같이 보낼 수 있다.
	@RequestMapping(value="/login", method=RequestMethod.POST)
	private String login(AdminDTO adminDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController login POST.....");
		HttpSession session = req.getSession();
		//넘겨받은 회원정보를 가지고 서비스에게 의뢰한다.
		AdminDTO login = adminService.login(adminDTO);
		logger.info("AdminController login Return Value : " + login);
		// 해당하는 회원의 정보가 없으면
		if(login == null) {
			session.setAttribute("admin", null);
			rttr.addFlashAttribute("msg", false);
		//해당하는 회원의 정보가 있으면
		} else {
			session.setAttribute("admin", login);
		}
		return "redirect:/admin/login";
	}
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	private String logout(HttpSession session) throws Exception {
		logger.info("AdminController logout().....");
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/admin/login";
	}
	
	//--------------------------------------------------------------------------------------
	
	// 회원 목록
	@RequestMapping(value={"/member", "/member/{pageNum}"})
	private String memberList(@PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController memberList().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 목록의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 전체 회원 명수를 카운트한다.
		model.addAttribute("totalCount", adminService.getMemberListCountAll());
		// 화면에 보여줄 회원 목록을 가져와서 담는다.
		model.addAttribute("memberList", adminService.memberListAll(startNo, numOfPage));
		return "/admin/memberList";
	}
	// 회원 검색 - 아이디 또는 이름 검색
	@RequestMapping(value={"/member/search/{searchCode}/{keyword}", "/member/search/{searchCode}/{keyword}/{pageNum}"})
	private String searchMember(@PathVariable int searchCode, @PathVariable String keyword, @PathVariable Optional<Integer> pageNum, 
						HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
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
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 전체 검색 건수를 구하고
		// 회원 목록 화면에 보여줄 데이터를 검색해와서 담는다.
		switch (searchCode) {
		case 1: //이름+아이디 검색
			model.addAttribute("totalCount", adminService.getSearchMemberAllCount("%" + keyword + "%"));
			model.addAttribute("memberList", adminService.searchMemberAll("%" + keyword + "%", startNo, numOfPage));
			break;
		case 2: //이름 검색
			model.addAttribute("totalCount", adminService.getSearchMemberNameCount("%" + keyword + "%"));
			model.addAttribute("memberList", adminService.searchMemberName("%" + keyword + "%", startNo, numOfPage));
			break;
		case 3: //아이디 검색
			model.addAttribute("totalCount", adminService.getSearchMemberIdCount("%" + keyword + "%"));
			model.addAttribute("memberList", adminService.searchMemberId("%" + keyword + "%", startNo, numOfPage));
			break;
		}
		return "/admin/memberList";
	}
	// 회원 상세정보
	@RequestMapping(value="/member/detail/{memberId}")
	private String memberDetail(@PathVariable String memberId, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController memberDetail().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		model.addAttribute("member", adminService.memberDetail(memberId));
		return "/admin/memberDetail";
	}
	
	// 회원가입 승인 목록
	@RequestMapping(value={"/register/{viewStatus}", "/register/{viewStatus}/{pageNum}"})
	private String registerList(@PathVariable Optional<Integer> pageNum, @PathVariable String viewStatus, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController registerList().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 목록 건수를 구하기
		// 선택된 상태의 회원가입 내역 개수를 카운트한다.
		boolean viewStatusBool = false;
		int totalCount = 0;
		if (viewStatus.equals("all")) {
			// viewStatus가 all이면 전체 목록을 보여준다.
			totalCount = adminService.getRegisterListCountAll();
		} else {
			viewStatusBool = viewStatus.equals("true") ? true : false ;
			totalCount = adminService.getRegisterListCount(viewStatusBool);
		}
		model.addAttribute("totalCount", totalCount);
		// 화면에 보여줄 목록의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 화면에 보여줄 데이터를 가져와서 담는다.
		if (viewStatus.equals("all")) {
			model.addAttribute("registerList", adminService.registerListAll(startNo, numOfPage));
		} else {
			model.addAttribute("registerList", adminService.registerList(viewStatusBool, startNo, numOfPage));
		}
		return "/admin/registerList";
	}
	// 모든 회원가입 내역 승인
	@RequestMapping(value={"/registerCheckAll"})
	private String registerCheckAll(HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController registerCheckAll().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 회원가입 내역의 checked 컬럼을 모두 true로 변경하고
		// 회원가입 내역의 강의번호 값을 모든 회원에게 업데이트
		adminService.registerCheckAll();
		return "redirect:/admin/register/all";
	}
	// 선택한 회원가입 내역 승인
	@ResponseBody
	@RequestMapping(value={"/registerCheck/{listNo}"}, method=RequestMethod.POST)
	private int registerCheck(@PathVariable int listNo, HttpSession session) throws Exception {
		logger.info("AdminController registerCheck().....");
		// 회원가입 내역의 checked 컬럼을 true로 변경하고
		// 회원가입 내역의 강의번호 값을 해당 회원에게 업데이트
		return adminService.registerCheck(listNo);
	}
	
	// 강의 목록
	@RequestMapping(value={"/lecture/{viewAcademy}", "/lecture/{viewAcademy}/{pageNum}"})
	private String lectureList(@PathVariable Optional<Integer> pageNum, @PathVariable String viewAcademy, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController lectureList().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 목록의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 선택된 학원의 강의 개수를 카운트하고
		// 화면에 보여줄 강의 목록을 가져와서 담는다.
		int totalCount = 0;
		if (viewAcademy.equals("all")) {
			// viewAcademy가 all이면 전체 목록을 보여준다.
			totalCount = adminService.getLectureListCountAll();
			model.addAttribute("lectureList", adminService.lectureListAll(startNo, numOfPage));
		} else {
			int viewAcademyNo = Integer.parseInt(viewAcademy);
			model.addAttribute("viewAcademyNo", viewAcademyNo);
			totalCount = adminService.getLectureListCount(viewAcademyNo);
			model.addAttribute("lectureList", adminService.lectureList(viewAcademyNo, startNo, numOfPage));
		}
		model.addAttribute("totalCount", totalCount);
		// 학원별로 강의를 보여주기 위해 전체 학원 목록을 가져온다.
		model.addAttribute("academyList", adminService.academyListAll());
		return "/admin/lectureList";
	}
	// 강의 검색 - 강의이름 또는 학원이름 검색
	@RequestMapping(value={"/lecture/search/{searchCode}/{keyword}/{viewAcademy}", "/lecture/search/{searchCode}/{keyword}/{viewAcademy}/{pageNum}"})
	private String searchLecture(@PathVariable int searchCode, @PathVariable String viewAcademy, @PathVariable String keyword, @PathVariable Optional<Integer> pageNum, 
						HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController searchLecture().....");
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
		// 화면에 보여줄 목록의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 선택된 학원별로 검색 결과를 보여주는데
		// viewAcademy가 all이면 전체 목록을 보여준다.
		if (viewAcademy.equals("all")) {
			viewAcademy = "%";
		} else { //viewAcademy에 학원번호가 들어오면 화면에 값을 보내준다.
			int viewAcademyNo = Integer.parseInt(viewAcademy);
			model.addAttribute("viewAcademyNo", viewAcademyNo);
		}
		// 화면에 보여줄 전체 검색 건수와 데이터를 검색해와서 담고
		// 학원별로 강의를 보여주기 위해 학원 목록을 가져온다.
		switch (searchCode) {
		case 1: //강의+학원이름 검색
			model.addAttribute("totalCount", adminService.getSearchLectureAllCount("%" + keyword + "%", viewAcademy));
			model.addAttribute("lectureList", adminService.searchLectureAll("%" + keyword + "%", viewAcademy, startNo, numOfPage));
			model.addAttribute("academyList", adminService.academyListSearchLectureAll("%" + keyword + "%"));
			break;
		case 2: //강의이름 검색
			model.addAttribute("totalCount", adminService.getSearchLectureNameCount("%" + keyword + "%", viewAcademy));
			model.addAttribute("lectureList", adminService.searchLectureName("%" + keyword + "%", viewAcademy, startNo, numOfPage));
			model.addAttribute("academyList", adminService.academyListSearchLectureName("%" + keyword + "%"));
			break;
		case 3: //학원이름 검색
			model.addAttribute("totalCount", adminService.getSearchLectureAcademyCount("%" + keyword + "%", viewAcademy));
			model.addAttribute("lectureList", adminService.searchLectureAcademy("%" + keyword + "%", viewAcademy, startNo, numOfPage));
			model.addAttribute("academyList", adminService.academyListSearchLectureAcademy("%" + keyword + "%"));
			break;
		}
		return "/admin/lectureList";
	}
	// 강의 등록 GET
	@RequestMapping(value="/lecture/write", method=RequestMethod.GET)
	private String getWriteLecture(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController writeLecture GET....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 강의 등록시 학원 선택을 위해 학원 목록을 가져온다.
		model.addAttribute("academyList", adminService.academyListAll());
		return "/admin/lectureWrite";
	}
	// 강의 등록 POST
	@RequestMapping(value = "/lecture/write", method = RequestMethod.POST)
	private String postWriteLecture(LectureDTO lectureDTO, HttpSession session) throws Exception {
		logger.info("AdminController writeLecture POST....." + lectureDTO);
		if (session.getAttribute("admin") != null) {
			lectureDTO.setLectureName(commonUtils.htmlConverter(lectureDTO.getLectureName()));
			adminService.writeLecture(lectureDTO);
		}
		return "redirect:/admin/lecture/all";
	}
	// 강의 삭제
	@RequestMapping(value="/lecture/delete/{lectureNo}")
	private String deleteLecture(@PathVariable int lectureNo) throws Exception {
		logger.info("AdminController deleteLecture()....");
		adminService.deleteLecture(lectureNo);
		return "redirect:/admin/lecture/all";
	}
	// 학원 목록
	@RequestMapping(value={"/academy", "/academy/{pageNum}"})
	private String academyList(@PathVariable Optional<Integer> pageNum, 
			HttpSession session, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController academyList().....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 현재 페이지의 번호를 저장하는 변수
		// pageNum에 값이 없으면 1, 있으면 해당하는 페이지를 가져온다.
		int pageNumber = pageNum.isPresent() ? (int)pageNum.get() : 1;
		model.addAttribute("pageNumber", pageNumber);
		// 화면에 보여줄 목록의 수
		int numOfPage = 10;
		model.addAttribute("numOfPage", numOfPage);
		// 현재 페이지 번호를 이용해서 출력될 페이지의 시작 번호를 구한다.
		int startNo = (pageNumber-1) * numOfPage;
		// 전체 학원 개수를 카운트한다.
		model.addAttribute("totalCount", adminService.getAcademyListCountAll());
		// 화면에 보여줄 학원 목록을 가져와서 담는다.
		model.addAttribute("academyList", adminService.academyList(startNo, numOfPage));
		return "/admin/academyList";
	}
	// 학원 등록 GET
	@RequestMapping(value="/academy/write", method=RequestMethod.GET)
	private String getWriteAcademy(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("AdminController writeAcademy GET....");
		// 로그인을 하지 않았으면 로그인 화면으로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		return "/admin/academyWrite";
	}
	// 학원 등록 POST
	@RequestMapping(value = "/academy/write", method = RequestMethod.POST)
	private String postWriteAcademy(AcademyDTO academyDTO, HttpSession session) throws Exception {
		logger.info("AdminController writeAcademy POST....." + academyDTO);
		if (session.getAttribute("admin") != null) {
			academyDTO.setAcademyName(commonUtils.htmlConverter(academyDTO.getAcademyName()));
			adminService.writeAcademy(academyDTO);
		}
		return "redirect:/admin/academy";
	}
	// 학원 삭제
	@RequestMapping(value="/academy/delete/{academyNo}")
	private String deleteAcademy(@PathVariable int academyNo) throws Exception {
		logger.info("AdminController deleteAcademy()....");
		adminService.deleteAcademy(academyNo);
		return "redirect:/admin/academy";
	}
	
	// 통계 화면
	@RequestMapping(value="/statistics", method=RequestMethod.GET)
	private String statistics(Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("AdminController statistics().....");
		// 세션에 AdminDTO가 있는지 확인하고 없으면 로그인 페이지로 보낸다.
		if (session.getAttribute("admin") == null) {
			rttr.addFlashAttribute("msgLogin", false);
			return "redirect:/admin/login";
		}
		// 가입한 회원들의 성별을 확인한다.
		int womenCount = adminService.getWomenCount();
		int menCount = adminService.getMenCount();
		// 성별 통계
		model.addAttribute("menCount", menCount);
		model.addAttribute("womenCount", womenCount);
		
		// 프리보드 게시글 카운트
		int freeboardCount = adminService.freeboardCount();
		// 그룹서치 게시글 카운트
		int groupsearchCount = adminService.groupsearchCount();
		// 클래스보드 게시글 카운트
		int classboardCount = adminService.classboardCount();
		// 그룹보드 게시글 카운트
		int groupboardCount = adminService.groupboardCount();
		// (오늘) 총 게시글 수
		int totalCount = freeboardCount + groupsearchCount + classboardCount + groupboardCount;
		model.addAttribute("totalCount", totalCount);
		
		// 프리보드 댓글 카운트
		int freeboardComment = adminService.freeboardComment();
		// 그룹서치 댓글 카운트
		int groupsearchComment = adminService.groupsearchComment();
		// 클래스보드 댓글 카운트
		int classboardComment = adminService.classboardComment();
		// 그룹보드 댓글 카운트
		int groupboardComment = adminService.groupboardComment();
		// (오늘) 총 댓글 수
		int totalcommentCount = freeboardComment + groupsearchComment + classboardComment + groupboardComment;
		model.addAttribute("totalcommentCount", totalcommentCount);
		
		
		// 신규회원
		int memberCount = adminService.memberCount();
		model.addAttribute("memberCount", adminService.memberCount());
		
		 //메인 페이지 방문자수(오늘)
	    model.addAttribute("getMainhits", mainService.getMainhits());
	    // 메인 페이지 방문자수(총방문자수)
	    model.addAttribute("getMainhitsall", mainService.getMainhitsall());
	    
	    // 메인 페이지 방문자수(날짜별 카운트)
	    //model.addAttribute("getDaycount", adminService.getDaycount());
	    model.addAttribute("getMonday", adminService.getMonday());
	    String getSunday = adminService.getSunday();
		logger.info("AdminController statistics()....." + getSunday );

		model.addAttribute("freeboardCount", adminService.freeboardCount());
		model.addAttribute("groupsearchCount", adminService.groupsearchCount());
		model.addAttribute("classboardCount", adminService.classboardCount());
		model.addAttribute("groupboardCount", adminService.groupboardCount());
		
	    model.addAttribute("getTuesday", adminService.getTuesday());
	    model.addAttribute("getWednesday", adminService.getWednesday());
	    model.addAttribute("getThursday", adminService.getThursday());
	    model.addAttribute("getFriday", adminService.getFriday());
	    model.addAttribute("getSaturday", adminService.getSaturday());
	    model.addAttribute("getSunday", adminService.getSunday());
		
	    model.addAttribute("board", adminBoardService.boardListService());
		
		return "/admin/statistics";
	}
	
}
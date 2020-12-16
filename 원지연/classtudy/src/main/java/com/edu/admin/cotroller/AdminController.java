package com.edu.admin.cotroller;

import java.util.ArrayList;
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

import com.edu.admin.domain.AdminDTO;
import com.edu.admin.service.AdminBoardService;
import com.edu.admin.service.AdminService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/admin/*") // AdminController에서 공통적으로 사용될 url mapping
public class AdminController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	@Inject
	AdminBoardService adminBoardService;
	
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
		int numOfPage = 15;
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
		model.addAttribute("menCount", menCount);
		model.addAttribute("womenCount", womenCount);
		////////////
		model.addAttribute("board", adminBoardService.boardListService());
		return "/admin/statistics";
	}
	
}
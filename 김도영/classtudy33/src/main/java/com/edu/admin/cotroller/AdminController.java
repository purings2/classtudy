package com.edu.admin.cotroller;

import java.util.Locale;

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
	private static final Logger LOGGER
		= LoggerFactory.getLogger(AdminController.class);
	
	// 컨트롤러 => 서비스 => Mapper 순서로!!
	//@Resource(name="com.edu.service.AdminService")
	@Inject
	AdminService adminService;
	
	@Inject
	AdminBoardService adminBoardService;
	// AdminService adminService = new AdminService();
	
	// 회원가입 GET : 회원가입 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/admin/register으로 호출한다.
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String getRegister() throws Exception {
		LOGGER.info("adminController getRegister().....");
		return "/admin/register"; // => WEB-INF/views/admin/register.jsp
	}
	
	// 회원가입 POST : 회원가입에 필요한 자료를 가지고 회원가입 요청이 들어오면
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(AdminDTO adminDTO, Model model) throws Exception {
		LOGGER.info("AdminController postRegister().....");
		
		// 회원아이디가 존재하는지 검사한다.
		// 데이터가 존재하면 1을 리턴하고 아니면 0을 리턴하는 idCheck메서드를 AdminService에 만든다.
		int result = adminService.idCheck(adminDTO);
		LOGGER.info("AdminController Return Count[" + result + "].....");
		
		if(result >= 1) {
			return "/admin/register";
		} else {
			adminService.insertAdmin(adminDTO);
		}
		
		return "redirect:/admin/login";
	}	
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int idCheck(AdminDTO adminDTO) throws Exception {
		LOGGER.info("AdminController : " + adminDTO);
		
		//아이디 중복 검사를 하기 위해서 adminDTO를 Service에게 넘겨준다.
		int result = adminService.idCheck(adminDTO);
		LOGGER.info("AdminController Return Value [" + result + "]");
		
		return result;
	}
	
	// 로그인 GET : 로그인 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/admin/login으로 호출한다.
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLogin() throws Exception {
		LOGGER.info("AdminController getLogin().....");
		return "/admin/login"; // => WEB-INF/views/admin/login.jsp
	}
	
	// 로그인 POST : 로그인에 필요한 자료를 가지고 로그인 요청이 들어오면
	// DB에 확인하여 정확한 정보이면 세션을 발급해주고, 아니라면 msg를 만들어서 보내준다.
	// RedirectAttributes를 사용하면 redirect로 보내지만 값을 같이 보낼 수 있다.
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(AdminDTO adminDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		LOGGER.info("AdminController login POST.....");
		
		HttpSession session = req.getSession();
		//LOGGER.info("AdminController login POST session : " + session);
		
		//넘겨받은 회원정보를 가지고 서비스에게 의뢰한다.
		AdminDTO login = adminService.login(adminDTO);
		LOGGER.info("AdminController Return Value : " + login);
		
		//////////////////////////////////////////////////////////
		// 해당하는 회원의 정보가 없으면
		if(login == null) {
		session.setAttribute("admin", null);
		
		//rttr.addAttribute("msg", false)를 사용하면, 변수명과 값이 주소에 노출된다.
		//rttr.addAttribute("msg", false);
		
		//RedirectAttributes를 사용하여 변수명과 주소값을 노출시키지 않고 사용한다.
		rttr.addFlashAttribute("msg", false);
		} else {
		//해당하는 회원의 정보가 있으면
		session.setAttribute("admin", login);
		}
		return "redirect:/admin/test";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		LOGGER.info("AdminController logout().....");
		
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/admin/login";
	}
	
	// 수정할 화면을 보여주세요. 라는 회원정보 수정 요청이 들어왔다.
	// 회원정보수정 GET
	@RequestMapping(value="/adminUpdate", method=RequestMethod.GET)
	public String adminUpdateView() throws Exception {
		LOGGER.info("AdminController adminUpdateView().....");
		
		return "/admin/adminUpdate";				
	}
	
	// 회원정보수정 POST
	@RequestMapping(value="adminUpdate", method=RequestMethod.POST)
	public String adminUpdate(AdminDTO adminDTO, HttpSession session) throws Exception {
		LOGGER.info("AdminController adminUpdate().....");
		
		adminService.adminUpdate(adminDTO);
		
		// 회원정보를 수정하면 다시 로그인하도록 세션을 만료시킨다.
		session.invalidate();
		
		return "/admin/login";
	}
	
	// 회원 탈퇴 GET
	@RequestMapping(value="/adminDelete", method=RequestMethod.GET)
	public String adminDeleteView() throws Exception {
		LOGGER.info("AdminController adminDeleteView GET.....");
		return "/admin/adminDelete";
	}
	
	// 회원 탈퇴 POST
	@RequestMapping(value="/adminDelete", method=RequestMethod.POST)
	public String adminDelete(AdminDTO adminDTO, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("AdminController adminDelete POST.....");
		
		// 세션에 들어있는(=DB에 있는 정보) admin정보를 가져와서 admin변수에 저장한다.
		AdminDTO admin = (AdminDTO)session.getAttribute("admin");
		
		// 세션에 들어있는 비밀번호를 변수에 저장한다.		
		String sessionPasswd = admin.getPasswd();
		
		// 사용자가 입력한 비밀번호가 매개변수로 들어오는 adminDTO에 들어있는 비밀번호이다.
		String adminDTOPasswd = adminDTO.getPasswd();
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞지 않으면		
		// 회원탈퇴화면으로 msg에 false를 담아서 이동한다. 
		if( !(sessionPasswd.equals(adminDTOPasswd)) ) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/admin/adminDelete";
		} 
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞으면
		// 회원 탈퇴 작업 => Service에게 회원탈퇴작업을 시킨다.
		adminService.adminDelete(adminDTO);
		session.invalidate();
		
		return "redirect:/admin/login";		
	}
	//테스트 페이지
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String getTest(Locale locale, Model model) throws Exception {
		LOGGER.info("adminController getTest().....");
		String womenCount = adminService.getWomenCount();
  		String menCount = adminService.getMenCount();

  		model.addAttribute("menCount", menCount);
  		model.addAttribute("womenCount", womenCount);
  		model.addAttribute("board", adminBoardService.boardListService());
		return "/admin/test"; // => WEB-INF/views/admin/test.jsp
	}






  	


	

	//게시글 삭제
	//삭제할 게시번호를 받아서 서비스한테 게시번호를 주고 삭제작업을 의뢰한다.
//	@RequestMapping("/delete")
//	public String delete(@RequestParam("b_no") int b_no) throws Exception {
//		System.out.println("Controller delete Before");
//		boardService.boardDelete(b_no);
//		return "redirect:/board/list";
//	}
	


} // End - public class BoardController














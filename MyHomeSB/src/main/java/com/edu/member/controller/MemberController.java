package com.edu.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.member.domain.MemberDTO;
import com.edu.member.service.MemberService;

////////////////////////////////////////////////////////////////////////////////////
// @MapperScan을 하기 위해서 MyHomeSbApplication에 @MapperScan을 기술해야 한다.
// 그렇지 않으면 프로젝트 구동시 mapper를 찾지 못해 프로그램이 실행되지 않는다.
// @MapperScan(value= {"com.edu.board.mapper", "com.edu.member.mapper"})
////////////////////////////////////////////////////////////////////////////////////

@Controller // 컨트롤러 빈으로 등록
@RequestMapping("member/*") // MemberControll에서 공통적으로 사용될 url mapping
public class MemberController {

	// 로깅을 위한 변수
	private static final Logger logger
		= LoggerFactory.getLogger(MemberController.class);
	
	// 컨트롤러 => 서비스 => Mapper
	@Inject
	MemberService memberService;
	
	// 회원가입 GET : 회원가입 화면을 보려고 요청이 들어오면
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
		logger.info("MemberController getRegister().....");
		return "/member/register"; // => WEB-INF/views/member/register.jsp
	}
	
	// 회원가입 POST : 회원가입에 필요한 자료를 가지고 회원가입 요청이 들어오면
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberDTO memberDTO) throws Exception {
		logger.info("MemberController postRegister().....");
		
		// 회원아이디가 존재하는지 검사한다.
		// 데이터가 존재하면 1, 아니면 0을 돌려 받는다.
		int result = memberService.idCheck(memberDTO);
		logger.info("MemberController Return Count[" + result + "].....");
		
		try {
			if(result >= 1) { // 아이디를 이미 사용하고 있다면 
				return "/member/register";
			} else if(result == 0) {
				// 사용가능한 아이디면 회원가입을 시켜준다.
				memberService.register(memberDTO);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/member/login";
	}
	
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int idCheck(MemberDTO memberDTO) throws Exception {
		logger.info("MemberController : " + memberDTO);
		
		// 아이디 중복 검사를 하기 위해서 memberDTO를 Service에게 넘겨준다.
		int result = memberService.idCheck(memberDTO);
		logger.info("MemberController Return Value [" + result + "]");
		
		return result;
	} // End - public int idCheck(MemberDTO memberDTO)
	
	// 로그인 GET
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLogin() throws Exception {
		logger.info("MemberController getLogin.....");
		return "/member/login";
	}
	
	// 로그인 POST
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberDTO memberDTO, HttpServletRequest req,
						RedirectAttributes rttr) throws Exception {
		logger.info("MemberController login POST.....");
		
		HttpSession session = req.getSession();
		////logger.info("MemberController login POST session : " + session);
		
		// 넘겨받은 회원정보를 가지고 서비스에게 의뢰를 한다.
		MemberDTO login = memberService.login(memberDTO);
		logger.info("MemberController Return Value : " + login);
		
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
		}
		return "redirect:/member/login";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("MemberController logout().....");
		
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/member/login";
	}
	
	// 수정할 화면을 보여주세요하는 회원정보수정 요청이 들어왔다. 
	// 회원정보수정 GET
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.GET)
	public String memberUpdateView() throws Exception {
		logger.info("MemberController memberUpdateView().....");
		return "/member/memberUpdate";
	}
	
	//회원정보 수정
	@RequestMapping(value="/member/memberUpdate",method = RequestMethod.POST)
	public String memberUpdate(MemberDTO memberDTO, HttpSession session)throws Exception{
		
		
		memberService.memberUpdate(memberDTO);
		//회원정보를 수정하면 다시 로그인하도록한다.
		session.invalidate();
		
		return "redirect:/member/login/";
		
	}
	//회원탈퇴
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String memberDelete() throws Exception {
		logger.info("MemberController memberDelete.....");
		
		return "/member/memberDelete";
	}
	//회원 탈퇴 POST
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberDTO memberDTO, HttpSession session,
			RedirectAttributes rttr) throws Exception {
		logger.info("MemberController memberDelete POST.....");
		
		//세션에 들어있는 memberDTO정보를 가져와서 member변수에 저장한다
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		//세션에 들어있는 비밀번호만 변수에 저장한다
		String sessionPasswd = member.getPasswd();
		
		//사용자가 입력한 비밀번호가 memberDTO에 들어있는 비밀번호이다.
		String memberDTOPasswd = memberDTO.getPasswd();
		
		//세셩의 비밀번호와 사용자가 입력한 비밀번호가 맞지 않으면		
		//회원탈퇴화면의 msg에 flase를 담아서 이동한다.
		if ( !(sessionPasswd.equals(memberDTOPasswd)) ) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/memberDelete";
		}		
		//세셩의 비밀번호와 사용자가 입력한 비밀번호가 맞으면		
		//회원 탈퇴 작업 -> Service한테 회원탈퇴작업을 시킨다.		
		memberService.memberDelete(memberDTO);
		session.invalidate();
		
		return "redirect:/member/login/";		
	}
	
	
} // End - public class MemberController


















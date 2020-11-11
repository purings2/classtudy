package com.edu.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.member.domain.MemberDTO;
import com.edu.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private static final Logger logger 
		= LoggerFactory.getLogger(MemberController.class);
	
	// 컨트롤러 => 서비스 => Mapper 순서로!!
	//@Resource(name="com.edu.service.MemberService")
	@Inject
	MemberService memberService;
		
	//회원가입 GET(회원가입화면을 보는 요청이 오면)
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception{
		logger.info("MemberController getRegister()...");
		return "/member/register";		
	}
	//회원가입 POST
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberDTO memberDTO) throws Exception{
		logger.info("MemberController postRegister()...");
		
		int result = memberService.idCheck(memberDTO);
		logger.info("MemberController Return Count[" + result + "].....");
		
		try {
			if(result >= 1) { // 아이디를 이미 사용하고 있다면 
				return "/member/register";
			} else if(result == 0) {
				// 사용가능한 아이디면 회원가입을 시켜준다.
				memberService.insertMember(memberDTO);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/member/login";		
	}
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int idCheck(MemberDTO memberDTO) throws Exception {
		logger.info("MemberController : " + memberDTO);
		
		//아이디 중복 검사를 하기 위해서 memberDTO를 Service에게 넘겨준다.
		int result = memberService.idCheck(memberDTO);
		logger.info("MemberController Return Value [" + result + "]");
		
		return result;
	}
	
	// 로그인 GET
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLogin() throws Exception {
		logger.info("MemberController getLogin().....");
		return "/member/login";
	}
	// 로그인 POST : 로그인에 필요한 자료를 가지고 로그인 요청이 들어오면
	// DB에 확인하여 정확한 정보이면 세션을 발급해주고, 아니라면 msg를 만들어서 보내준다.
	// RedirectAttributes를 사용하면 redirect로 보내지만 값을 같이 보낼 수 있다.
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberDTO memberDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("MemberController login POST.....");
		
		HttpSession session = req.getSession();
		//LOGGER.info("MemberController login POST session : " + session);
		
		//넘겨받은 회원정보를 가지고 서비스에게 의뢰한다.
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
	
	// 수정할 화면을 보여주세요. 라는 회원정보 수정 요청이 들어왔다.
	// 회원정보수정 GET
	@RequestMapping(value="/memberUpdate", method=RequestMethod.GET)
	public String memberUpdateView() throws Exception {
		logger.info("MemberController memberUpdateView().....");
		
		return "/member/memberUpdate";				
	}
	
	// 회원정보수정 POST
	@RequestMapping(value="memberUpdate", method=RequestMethod.POST)
	public String memberUpdate(MemberDTO memberDTO, HttpSession session) throws Exception {
		logger.info("MemberController memberUpdate().....");
		
		memberService.memberUpdate(memberDTO);
		
		// 회원정보를 수정하면 다시 로그인하도록 세션을 만료시킨다.
		session.invalidate();
		
		return "/member/login";
	}
	
	// 회원 탈퇴 GET
	@RequestMapping(value="/memberDelete", method=RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		logger.info("MemberController memberDeleteView GET.....");
		return "/member/memberDelete";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("MemberController logout().....");
		
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/member/login";
	}	
	
	// 회원 탈퇴 POST
	@RequestMapping(value="/memberDelete", method=RequestMethod.POST)
	public String memberDelete(MemberDTO memberDTO, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("MemberController memberDelete POST.....");
		
		// 세션에 들어있는(=DB에 있는 정보) member정보를 가져와서 member변수에 저장한다.
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		// 세션에 들어있는 비밀번호를 변수에 저장한다.		
		String sessionPasswd = member.getPasswd();
		
		// 사용자가 입력한 비밀번호가 매개변수로 들어오는 memberDTO에 들어있는 비밀번호이다.
		String memberDTOPasswd = memberDTO.getPasswd();
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞지 않으면		
		// 회원탈퇴화면으로 msg에 false를 담아서 이동한다. 
		if( !(sessionPasswd.equals(memberDTOPasswd)) ) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/memberDelete";
		} 
		
		// 세션의 비밀번호와 사용자가 입력한 비밀번호가 맞으면
		// 회원 탈퇴 작업 => Service에게 회원탈퇴작업을 시킨다.
		memberService.memberUpdate(memberDTO);
		session.invalidate();
		
		return "redirect:/member/login";		
	}		
}

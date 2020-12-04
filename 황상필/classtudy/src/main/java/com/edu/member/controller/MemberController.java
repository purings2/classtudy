package com.edu.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.edu.common.CommonUtils;
import com.edu.member.domain.MemberDTO;
import com.edu.member.service.MemberService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/member/*") // MemberController에서 공통적으로 사용될 url mapping
public class MemberController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);
	
	// 컨트롤러 => 서비스 => Mapper 순서로!!
	//@Resource(name="com.edu.service.MemberService")
	@Inject
	MemberService memberService;
	
	// 공통으로 사용하는 메서드가 들어있는 클래스
	@Inject
	CommonUtils commonUtils;
	
	// 회원가입 GET : 회원가입 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/member/register으로 호출한다.
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String getRegister() throws Exception {
		LOGGER.info("MemberController getRegister().....");
		return "/member/register"; // => WEB-INF/views/member/register.jsp
	}
	
	// 회원가입 POST : 회원가입에 필요한 자료를 가지고 회원가입 요청이 들어오면
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(MemberDTO memberDTO, HttpServletRequest request, Model model) throws Exception {
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
		
		// 입력한 강의번호는 확인 테이블에 보내기
		memberService.LectureCheck(memberDTO.getMemberId(), memberDTO.getLectureNo());
		// 강의번호가 확인되기 전까지 기본값인 1로 저장
		memberDTO.setLectureNo(1);
		
		// 회원아이디가 존재하는지 검사한다.
		// 데이터가 존재하면 1을 리턴하고 아니면 0을 리턴하는 idCheck메서드를 MemberService에 만든다.
		int result = memberService.idCheck(memberDTO);
		LOGGER.info("MemberController Return Count[" + result + "].....");
		
		if(result >= 1) {
			return "/member/register";
		} else {
			memberService.insertMember(memberDTO);
		}
		
		return "redirect:/member/login";
	}	
	
	// 아이디 중복 검사
	@ResponseBody
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int idCheck(MemberDTO memberDTO) throws Exception {
		LOGGER.info("MemberController : " + memberDTO);
		
		//아이디 중복 검사를 하기 위해서 memberDTO를 Service에게 넘겨준다.
		int result = memberService.idCheck(memberDTO);
		LOGGER.info("MemberController Return Value [" + result + "]");
		
		return result;
	}
	
	// 로그인 GET : 로그인 화면을 보려고 요청이 들어오면
	// 웹 브라우저에서 http://localhost:8071/member/login으로 호출한다.
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String getLogin() throws Exception {
		LOGGER.info("MemberController getLogin().....");
		return "/member/login"; // => WEB-INF/views/member/login.jsp
	}
	
	// 로그인 POST : 로그인에 필요한 자료를 가지고 로그인 요청이 들어오면
	// DB에 확인하여 정확한 정보이면 세션을 발급해주고, 아니라면 msg를 만들어서 보내준다.
	// RedirectAttributes를 사용하면 redirect로 보내지만 값을 같이 보낼 수 있다.
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberDTO memberDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
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
		}
		return "redirect:/member/login";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		LOGGER.info("MemberController logout().....");
		
		// 로그아웃 버튼을 눌렀을 경우, 세션을 없애고 로그인화면으로 돌아가도록 한다.
		session.invalidate();
		return "redirect:/member/login";
	}
	
	// 수정할 화면을 보여주세요. 라는 회원정보 수정 요청이 들어왔다.
	// 회원정보 수정 GET
	@RequestMapping(value="/memberUpdate", method=RequestMethod.GET)
	public String memberUpdateView(HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
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
	public String memberUpdate(MemberDTO memberDTO, HttpSession session, HttpServletRequest request) throws Exception {
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
	public String memberDeleteView() throws Exception {
		LOGGER.info("MemberController memberDeleteView GET.....");
		return "/member/memberDelete";
	}
	
	// 회원 탈퇴 POST
	@RequestMapping(value="/memberDelete", method=RequestMethod.POST)
	public String memberDelete(MemberDTO memberDTO, HttpSession session, RedirectAttributes rttr) throws Exception {
		LOGGER.info("MemberController memberDelete POST.....");
		
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
		memberService.memberDelete(memberDTO);
		session.invalidate();
		
		return "redirect:/member/login";
	}
	
}
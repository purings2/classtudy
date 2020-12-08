package com.edu.common.controller;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.member.domain.MemberDTO;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
public class MainController {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MainController.class);

	// 메인 화면 => http://localhost:8071/로 들어왔을 때
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model, HttpSession session) throws Exception {
		LOGGER.info("MainController main().....");
		
		// 세션에 MemberDTO가 있는지 확인하고
		// 있으면 model에 member의 이름을 담는다.
		if (session.getAttribute("member") != null) {
			MemberDTO member = (MemberDTO)session.getAttribute("member");
			model.addAttribute("name", member.getName());
		} else {
			model.addAttribute("name", "방문자");
		}
		
		return "/main"; // => WEB-INF/views/main.jsp
	}
	
	// 학원
	@RequestMapping(value="/academy", method=RequestMethod.GET)
	public String academy(Model model, HttpSession session) throws Exception {
		LOGGER.info("MainController academy().....");
		return "/common/academy"; // => WEB-INF/views/academy.jsp
	}
	
}

package com.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	@RequestMapping("/hello")
	private String helloTest() {
		return "/hello"; // /WEB-INF/views/hello.jsp
	}

}

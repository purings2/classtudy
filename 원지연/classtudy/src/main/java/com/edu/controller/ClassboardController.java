package com.edu.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/class/*") // ClassboardController에서 공통적으로 사용될 url mapping
public class ClassboardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(ClassboardController.class);
	
	@Inject
	//ClassboardService classboardService;
	
	@RequestMapping(value="/TIL", method=RequestMethod.GET)
	public String til() throws Exception {
		logger.info("ClassboardController til()....");
		return "/classboard/til";
	}

}

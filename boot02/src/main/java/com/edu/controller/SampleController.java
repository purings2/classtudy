package com.edu.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.dto.SampleDTO;

//결과 화면은 JSP나 HTML같은 별도의 뷰(View)를 황용하지 않고 문자열 데이터를 브라우저로 전송한다.
@RestController
public class SampleController {
	
	@GetMapping("/hello")
	public String sysHello() {
		return "Hello Spring Boot";
		
	}
	
	@GetMapping("/sample")
	public SampleDTO makeSample() {
		SampleDTO dto = new SampleDTO();
		dto.setVal1("첫번째");
		dto.setVal2("두번째");
		dto.setVal3("세번째");
		System.out.println(dto);
		return dto;		
	}

}

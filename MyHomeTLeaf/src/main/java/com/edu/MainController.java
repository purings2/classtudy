package com.edu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping("/")
	private String gotoBoardList() {
		return "redirect:/boards/list";
	}
	
}

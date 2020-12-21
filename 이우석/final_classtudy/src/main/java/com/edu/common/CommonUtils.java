package com.edu.common;

import org.springframework.stereotype.Component;

@Component
public class CommonUtils {
	
	// HTML Text Converter
	public String htmlConverter(String str) {
		// 특수문자 <, > 치환
		str = str.replace("<", "&lt;");
		str = str.replace(">", "&gt;");
		return str;
	}
	
}
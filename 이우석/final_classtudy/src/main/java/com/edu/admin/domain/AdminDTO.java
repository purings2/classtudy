package com.edu.admin.domain;


import java.util.Date;

import lombok.Data;

@Data
public class AdminDTO {
	
	private	String adminId;
	private	String passwd;
	
	public AdminDTO() {}
	
	// admin에 쓰일 date
	
	private int hitNo;
	private Date hitDate;
	private String ctn;
	
}

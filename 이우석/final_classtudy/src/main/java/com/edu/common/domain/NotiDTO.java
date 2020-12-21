package com.edu.common.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NotiDTO {
	
	private int 	notiNo;
	private String 	receiver;
	private String 	content;
	private boolean checked;
	private Date 	sendDate;
	
	public NotiDTO() {}
	
}
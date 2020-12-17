package com.edu.member.domain;

import lombok.Data;

@Data
public class LectureDTO {
	
	private int 	lectureNo;
	private String 	lectureName;
	private int 	academyNo;
	
	// Academy Table에 있는 academyName 컬럼의 값
	// academyNo가 일치할 때의 값을 가져온다.
	private String 	lectureAcademy;
	
	public LectureDTO() {}
	
}
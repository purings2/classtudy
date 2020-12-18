package com.edu.member.domain;

import lombok.Data;

@Data
public class GrouplistDTO {
	
	private int 	groupNo; 	//그룹번호
	private String 	groupName; 	//그룹이름
	
	public GrouplistDTO() {}
	public GrouplistDTO(int groupNo, String groupName) {
		this.groupNo = groupNo;
		this.groupName = groupName;
	}
	
}
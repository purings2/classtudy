package com.edu.board.domain;

import lombok.Data;

@Data
public class FileDTO {
	
	private		int			fno;			// 파일 일련번호
	private		int			bno;			// 게시글 번호
	private		String		fileName;		// 저장될 파일명
	private		String		fileOriName;	// 원래 파일명
	private		String		fileUrl;		// 파일의 위치
	
}

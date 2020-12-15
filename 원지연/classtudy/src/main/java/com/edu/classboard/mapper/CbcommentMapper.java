package com.edu.classboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.classboard.domain.CbcommentDTO;

@Repository("com.edu.classboard.mapper.CbcommentMapper")
public interface CbcommentMapper {
	
	// 댓글 목록 보기
	public List<CbcommentDTO> commentList(int boardNo) throws Exception;
	
	// 댓글 작성
	public int commentInsert(CbcommentDTO comment) throws Exception;
	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception;
	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception;
	
}
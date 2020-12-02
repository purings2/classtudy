package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.domain.FbcommentDTO;

@Repository("com.edu.mapper.FbcommentMapper")
public interface FbcommentMapper {
	
	// 댓글 목록 보기
	public List<FbcommentDTO> commentList(int boardNo) throws Exception;
	
	// 댓글 작성
	public int commentInsert(FbcommentDTO comment) throws Exception;
	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception;
	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception;
	
	


}
package com.edu.groupboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.groupboard.domain.GbcommentDTO;

@Repository("com.edu.groupboard.mapper.GbcommentMapper")
public interface GbcommentMapper {
	
	// 댓글 목록 보기
	public List<GbcommentDTO> commentList(int boardNo) throws Exception;
	
	// 댓글 작성
	public int commentInsert(GbcommentDTO comment) throws Exception;
	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception;
	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception;
	
}
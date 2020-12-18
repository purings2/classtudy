package com.edu.groupboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.edu.groupboard.domain.GbcommentDTO;
import com.edu.groupboard.mapper.GbcommentMapper;

@Service("com.edu.groupboard.service.GbcommentService")
public class GbcommentService {
	
	@Resource(name = "com.edu.groupboard.mapper.GbcommentMapper")
	GbcommentMapper gbcommentMapper;
	
	// 댓글 목록 보기
	public List<GbcommentDTO> commentList(int boardNo) throws Exception {
		return gbcommentMapper.commentList(boardNo);
	}
	
	// 댓글 작성
	public int commentInsert(GbcommentDTO comment) throws Exception {
		return gbcommentMapper.commentInsert(comment);
	}
	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception {
		return gbcommentMapper.commentUpdate(content, commentNo);
	}
	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception {
		return gbcommentMapper.commentDelete(commentNo);
	}
	
}
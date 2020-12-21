package com.edu.classboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.edu.classboard.domain.CbcommentDTO;
import com.edu.classboard.mapper.CbcommentMapper;

@Service("com.edu.classboard.service.CbcommentService")
public class CbcommentService {
	
	@Resource(name="com.edu.classboard.mapper.CbcommentMapper")
	CbcommentMapper cbcommentMapper;
	
	// 댓글 목록 보기
	public List<CbcommentDTO> commentList(int boardNo) throws Exception {
		return cbcommentMapper.commentList(boardNo);
	}
	
	// 댓글 작성
	public int commentInsert(CbcommentDTO comment) throws Exception {
		return cbcommentMapper.commentInsert(comment);
	}
	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception {
		return cbcommentMapper.commentUpdate(content, commentNo);
	}
	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception {
		return cbcommentMapper.commentDelete(commentNo);
	}

}
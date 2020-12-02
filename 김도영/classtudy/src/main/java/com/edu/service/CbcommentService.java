package com.edu.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.domain.CbcommentDTO;
import com.edu.mapper.CbcommentMapper;

@Service("com.edu.service.CbcommentService")
public class CbcommentService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	//private static final Logger logger = LoggerFactory.getLogger(CbcommentService.class);
	
	@Resource(name="com.edu.mapper.CbcommentMapper")
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
package com.edu.freeboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.freeboard.domain.FbcommentDTO;
import com.edu.freeboard.mapper.FbcommentMapper;

@Service("com.edu.freeboard.service.FbcommentService")
public class FbcommentService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(FbcommentService.class);
	
	@Resource(name="com.edu.freeboard.mapper.FbcommentMapper")
	FbcommentMapper fbcommentMapper;
	
	// 댓글 목록 보기
	public List<FbcommentDTO> commentList(int boardNo, String memberId) throws Exception {		
		return fbcommentMapper.commentList(boardNo, memberId);
	}	
	// 댓글 작성
	public int commentInsert(FbcommentDTO comment) throws Exception {
		logger.info("FbcommentService commentInsert() comment : " + comment);
		return fbcommentMapper.commentInsert(comment);
	}
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception {
		return fbcommentMapper.commentUpdate(content, commentNo);
	}
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception {
		return fbcommentMapper.commentDelete(commentNo);
	}
	// comment 좋아요
	// 게시글 좋아요 수 증가
	public int addLikes(int commentNo) throws Exception {
		return fbcommentMapper.addLikes(commentNo);
	}
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int commentNo, String memberId) throws Exception {
		return fbcommentMapper.writeLikes(commentNo, memberId);
	}
	// 게시글 좋아요수 가져오기	
	public int getLikes(int commentNo) throws Exception {
		return fbcommentMapper.getLikes(commentNo);
	}
	// 게시글 좋아요 여부 검사	
	public int likeCheck(int commentNo, String memberId) throws Exception {
		return fbcommentMapper.likeCheck(commentNo, memberId);
	}
	// 게시글 좋아요수 감소	
	public int subtractLikes(int commentNo) throws Exception {
		return fbcommentMapper.subtractLikes(commentNo);
	}
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int commentNo, String memberId) throws Exception {
		return fbcommentMapper.deleteLikes(commentNo, memberId);
	}
}
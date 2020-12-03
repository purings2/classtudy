package com.edu.freeboard.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.freeboard.domain.FbcommentDTO;
import com.edu.freeboard.service.FbcommentService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/fbcomment/*") // Controller에서 공통적으로 사용될 url mapping
public class FbcommentController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(FbcommentController.class);
	
	@Inject
	FbcommentService fbcommentService;
	
	// 댓글 목록 보기
	@ResponseBody
	@RequestMapping(value="/list/{boardNo}")
	private List<FbcommentDTO> commentList(@PathVariable int boardNo, Model model) throws Exception {
		logger.info("FbcommentController commentList()....");
		logger.info("FbcommentController boardNo : "+ boardNo );
		return fbcommentService.commentList(boardNo);
	}	
	// 댓글 작성
	@ResponseBody
	@RequestMapping(value="/insert")
	private int commentInsert(String writer, String content, int boardNo) throws Exception {
		logger.info("FbcommentController commentInsert()....");
		
		FbcommentDTO comment = new FbcommentDTO();
		comment.setWriter(writer);
		comment.setContent(content);
		comment.setBoardNo(boardNo);
		logger.info("FbcommentController comment : "+ writer,content,boardNo );
		
		return fbcommentService.commentInsert(comment);
	}	
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value="/update")
	private int commentUpdate(String content, int commentNo) throws Exception {
		logger.info("FbcommentController commentUpdate()....");
		return fbcommentService.commentUpdate(content, commentNo);
	}
	// 댓글 삭제
	@ResponseBody
	@RequestMapping(value="/delete/{commentNo}")
	private int commentDelete(@PathVariable int commentNo) throws Exception {
		logger.info("FbcommentController commentDelete()....");
		return fbcommentService.commentDelete(commentNo);
	}
	/*
	// 게시글 좋아요
	@ResponseBody
	@RequestMapping(value="/like", method=RequestMethod.POST)
	private int like(int boardNo, String memberId) throws Exception {
		logger.info("FbcommentController like()....");
		// 게시글 좋아요를 하기 위해 게시글 번호를 Service에게 넘겨준다.
		fbcommentService.addLikes(boardNo);
		// 좋아요 테이블에 좋아요 내용을 기록한다.
		fbcommentService.writeLikes(boardNo, memberId);
		// 좋아요 후의 좋아요수를 가져와서 보낸다.
		int result = fbcommentService.getLikes(boardNo);
		logger.info("FbcommentController Return Value [" + result + "]");
		return result;
	} */
	
}
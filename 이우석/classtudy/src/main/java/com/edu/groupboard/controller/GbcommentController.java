package com.edu.groupboard.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.common.CommonUtils;
import com.edu.groupboard.domain.GbcommentDTO;
import com.edu.groupboard.service.GbcommentService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/gbcomment/*")
public class GbcommentController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(GbcommentController.class);
	
	@Inject
	GbcommentService gbcommentService;
	
	@Inject
	CommonUtils commonUtils;
	
	// 댓글 목록 보기
	@ResponseBody
	@RequestMapping(value="/list/{boardNo}")
	private List<GbcommentDTO> commentList(@PathVariable int boardNo, Model model) throws Exception {
		logger.info("GbcommentController commentList()....");
		return gbcommentService.commentList(boardNo);
	}
	
	// 댓글 작성
	@ResponseBody
	@RequestMapping(value="/insert")
	private int commentInsert(String writer, String content, int boardNo) throws Exception {
		logger.info("GbcommentController commentInsert()....");
		
		GbcommentDTO comment = new GbcommentDTO();
		comment.setWriter(writer);
		comment.setContent(commonUtils.htmlConverter(content));
		comment.setBoardNo(boardNo);
		
		return gbcommentService.commentInsert(comment);
	}
	
	// 댓글 수정
	@ResponseBody
	@RequestMapping(value="/update")
	private int commentUpdate(String content, int commentNo) throws Exception {
		logger.info("GbcommentController commentUpdate()....");
		content = commonUtils.htmlConverter(content);
		return gbcommentService.commentUpdate(content, commentNo);
	}
	
	// 댓글 삭제
	@ResponseBody
	@RequestMapping(value="/delete/{commentNo}")
	private int commentDelete(@PathVariable int commentNo) throws Exception {
		logger.info("GbcommentController commentDelete()....");
		return gbcommentService.commentDelete(commentNo);
	}
	
}

package com.edu.freeboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.edu.freeboard.domain.FbcommentDTO;
import com.edu.freeboard.mapper.FbcommentMapper;
import com.edu.freeboard.service.FbcommentService;

@Service("com.edu.freeboard.service.FbcommentService")
public class FbcommentService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
		private static final Logger logger = LoggerFactory.getLogger(FbcommentService.class);
		
		@Resource(name="com.edu.freeboard.mapper.FbcommentMapper")
		FbcommentMapper fbcommentMapper;
		
		// 댓글 목록 보기
		public List<FbcommentDTO> commentList(int boardNo) throws Exception {
			return fbcommentMapper.commentList(boardNo);
		}	
		
		// 댓글 작성
		public int commentInsert(FbcommentDTO comment) throws Exception {
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
	}
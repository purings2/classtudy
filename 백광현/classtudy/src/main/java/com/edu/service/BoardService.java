package com.edu.service;

import java.util.List;

import javax.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;
import com.edu.controller.MemberController;
import com.edu.domain.BoardDTO;
import com.edu.mapper.BoardMapper;

@Service("com.edu.service.BoardService")
public class BoardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.mapper.BoardMapper")
	BoardMapper boardMapper;
	
	//게시글 목록 보기
	public List<BoardDTO> groupList() throws Exception {
		LOGGER.info("BoardService groupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 등록
	public int groupInsert(BoardDTO boardDTO) throws Exception{
		return boardMapper.groupInsert(boardDTO);
	}
	
	//게시글 목록 보기
	public List<BoardDTO> mygroupList() throws Exception {
		LOGGER.info("BoardService mygroupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 삭제
	public int boardDeleteService(int boardNo) throws Exception {
		return boardMapper.boardDelete(boardNo);
	}
}
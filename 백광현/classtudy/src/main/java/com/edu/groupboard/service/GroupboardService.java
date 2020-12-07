package com.edu.groupboard.service;

import java.util.List;

import javax.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;
import com.edu.controller.MemberController;
import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.mapper.GroupboardMapper;

@Service("com.edu.groupboard.service.GroupboardService")
public class GroupboardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.groupboard.mapper.GroupboardMapper")
	GroupboardMapper boardMapper;
	
	//게시글 목록 보기
	public List<GroupboardDTO> groupList() throws Exception {
		LOGGER.info("BoardService groupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 등록
	public int groupInsert(GroupboardDTO boardDTO) throws Exception{
		return boardMapper.groupInsert(boardDTO);
	}
	
	//게시글 목록 보기
	public List<GroupboardDTO> mygroupList() throws Exception {
		LOGGER.info("BoardService mygroupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 삭제
	public int boardDeleteService(int boardNo) throws Exception {
		return boardMapper.boardDelete(boardNo);
	}
}
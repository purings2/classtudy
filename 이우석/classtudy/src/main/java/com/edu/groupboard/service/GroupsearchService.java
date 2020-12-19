package com.edu.groupboard.service;

import java.util.List;

import javax.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;
import com.edu.member.controller.MemberController;
import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.domain.GroupsearchDTO;
import com.edu.groupboard.mapper.GroupsearchMapper;

@Service("com.edu.groupboard.service.GroupsearchService")
public class GroupsearchService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(MemberController.class);

	@Resource(name="com.edu.groupboard.mapper.GroupsearchMapper")
	GroupsearchMapper boardMapper;
	
	
	//게시글 목록 보기
	public List<GroupsearchDTO> groupList() throws Exception {
		LOGGER.info("GroupsearchService groupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 목록 보기
	public List<GroupsearchDTO> groupListInsert() throws Exception {
		LOGGER.info("GroupsearchService mygroupBoard().....");
		return boardMapper.groupList();
	}
	
	//게시글 등록
	public int groupInsert(GroupsearchDTO boardDTO) throws Exception{
		return boardMapper.groupInsert(boardDTO);
	}
	
	//게시글 등록
	public int groupListInsert(GrouplistDTO grouplistDTO) {
		return boardMapper.groupListInsert(grouplistDTO);	
	}

	//게시글 삭제
	public int boardDeleteService(int boardNo) throws Exception {
		return boardMapper.boardDelete(boardNo);
	}
	
	//joinGroup1
	public int joinGroup1(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup1Service Start");
		return boardMapper.joinGroup1(groupNo, memberId);
	}
	
	//joinGroup2
	public int joinGroup2(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup2Service Start");
		return boardMapper.joinGroup2(groupNo, memberId);
	}
	
	//joinGroup3
	public int joinGroup3(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup3Service Start");
		return boardMapper.joinGroup3(groupNo, memberId);
	}
	
	// join 여부 검사
	public int joinCheck(int groupNo, String memberId) throws Exception {
		LOGGER.info("조인 여부 검사 logger memberId : " + memberId);
		return boardMapper.joinCheck(groupNo , memberId);
	}
}
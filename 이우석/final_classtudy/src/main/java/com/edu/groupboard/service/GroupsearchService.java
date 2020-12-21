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
	GroupsearchMapper groupsearchMapper;
	
	//----------------------------------------------------------------
	// 게시글 목록 가져오기 관련
	//----------------------------------------------------------------
/*	
	// 게시글 목록 - 제목+내용 검색
	public List<GroupboardDTO> searchAll(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupsearchMapper.searchAll(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 제목 검색
	public List<GroupboardDTO> searchTitle(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupsearchMapper.searchTitle(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 내용 검색
	public List<GroupboardDTO> searchContent(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupsearchMapper.searchContent(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 작성자 검색
	public List<GroupboardDTO> searchWriter(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupsearchMapper.searchWriter(groupNo, keyword, startNo, numOfPage);
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int viewGroupNo) throws Exception {
		return groupsearchMapper.getBoardCount(viewGroupNo);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int groupNo, String keyword) throws Exception {
		return groupsearchMapper.getSearchCountAll(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int groupNo, String keyword) throws Exception {
		return groupsearchMapper.getSearchCountTitle(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int groupNo, String keyword) throws Exception {
		return groupsearchMapper.getSearchCountContent(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int groupNo, String keyword) throws Exception {
		return groupsearchMapper.getSearchCountWriter(groupNo, keyword);
	}
	//----------------------------------------------------------------
	*/
	//게시글 목록 보기
	public List<GroupsearchDTO> groupList() throws Exception {
		LOGGER.info("GroupsearchService groupBoard().....");
		return groupsearchMapper.groupList();
	}
	
	//게시글 목록 보기
	public List<GroupsearchDTO> groupListInsert() throws Exception {
		LOGGER.info("GroupsearchService mygroupBoard().....");
		return groupsearchMapper.groupList();
	}
	
	//게시글 등록
	public int groupInsert(GroupsearchDTO boardDTO) throws Exception{
		return groupsearchMapper.groupInsert(boardDTO);
	}
	
	//게시글 등록
	public int groupListInsert(GrouplistDTO grouplistDTO) {
		return groupsearchMapper.groupListInsert(grouplistDTO);	
	}

	//게시글 삭제
	public int groupDeleteService(int boardNo) throws Exception {
		return groupsearchMapper.groupDelete(boardNo);
	}
	//----------------------------------------------------------------
	
	//joinGroup1
	public int joinGroup1(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup1Service Start");
		return groupsearchMapper.joinGroup1(groupNo, memberId);
	}
	
	//joinGroup2
	public int joinGroup2(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup2Service Start");
		return groupsearchMapper.joinGroup2(groupNo, memberId);
	}
	
	//joinGroup3
	public int joinGroup3(int groupNo, String memberId) throws Exception {
		LOGGER.info("joinGroup3Service Start");
		return groupsearchMapper.joinGroup3(groupNo, memberId);
	}
	
	// join 여부 검사
	public int joinCheck(int groupNo, String memberId) throws Exception {
		LOGGER.info("조인 여부 검사 logger memberId : " + memberId);
		return groupsearchMapper.joinCheck(groupNo , memberId);
	}
	//----------------------------------------------------------------
}
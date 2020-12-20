package com.edu.groupboard.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.groupboard.domain.GrouplistDTO;
import com.edu.groupboard.domain.GroupsearchDTO;


@Repository("com.edu.groupboard.mapper.GroupsearchMapper")
public interface GroupsearchMapper {
	
	//게시글 목록 보기
	public List<GroupsearchDTO> groupList() throws Exception;
	
/*	// 게시글 목록 - 제목+내용 검색
	public List<GroupboardDTO> searchAll(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 제목 검색
	public List<GroupboardDTO> searchTitle(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 내용 검색
	public List<GroupboardDTO> searchContent(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 작성자 검색
	public List<GroupboardDTO> searchWriter(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int groupNo) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int groupNo, String keyword) throws Exception;
	*/
	
	//게시글 작성
	public int groupInsert(GroupsearchDTO boardDTO) throws Exception;
	//게시글 삭제
	public int groupDelete(int boardNo) throws Exception;
	//입력된 그룹명으로 그룹리스트에 저장하고 그 key값을 가져오기
	public int groupListInsert(GrouplistDTO grouplistDTO);

	public int groupListInsert(String groupName) throws Exception;
	
	//joinGroup1
	public int joinGroup1(int groupNo,String memberId) throws Exception;
	//joinGroup2
	public int joinGroup2(int groupNo,String memberId) throws Exception;
	//joinGroup2
	public int joinGroup3(int groupNo,String memberId) throws Exception;
	//joinCheck
	public int joinCheck(int groupNo, String memberId) throws Exception;
	
}

package com.edu.groupsearch.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.groupsearch.domain.GroupListDTO;
import com.edu.groupsearch.domain.GroupsearchDTO;


@Repository("com.edu.groupsearch.mapper.GroupsearchMapper")
public interface GroupsearchMapper {
	
	//게시글 목록 보기
	public List<GroupsearchDTO> groupList() throws Exception;
	
	//게시글 작성
	public int groupInsert(GroupsearchDTO boardDTO) throws Exception;

	//게시글 삭제
	public int boardDelete(int boardNo) throws Exception;

	//입력된 그룹명으로 그룹리스트에 저장하고 그 key값을 가져오기
	public int groupListInsert(GroupListDTO grouplistDTO);

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

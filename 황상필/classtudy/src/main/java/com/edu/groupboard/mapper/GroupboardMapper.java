package com.edu.groupboard.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.groupboard.domain.GroupboardDTO;


@Repository("com.edu.groupboard.mapper.GroupboardMapper")
public interface GroupboardMapper {
	
	//게시글 목록 보기
	public List<GroupboardDTO> groupList() throws Exception;
	
	//게시글 작성
	public int groupInsert(GroupboardDTO boardDTO) throws Exception;

	//게시글 삭제
	public int groupboardDelete(int boardNo) throws Exception;
}

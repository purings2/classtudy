package com.edu.groupboard.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.domain.GrouplistDTO;


@Repository("com.edu.groupboard.mapper.GroupboardMapper")
public interface GroupboardMapper {
	
	//게시글 목록 보기
	public List<GroupboardDTO> groupList() throws Exception;
	
	//게시글 작성
	public int groupInsert(GroupboardDTO boardDTO) throws Exception;

	//게시글 삭제
	public int groupboardDelete(int boardNo) throws Exception;

	//입력된 그룹명으로 그룹리스트에 저장하고 그 key값을 가져오기
	public int groupListInsert(GrouplistDTO grouplistDTO);
}

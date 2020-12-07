package com.edu.mapper;

import java.util.List;
import org.springframework.stereotype.*;
import com.edu.domain.GroupCommentDTO;


@Repository("com.edu.mapper.GroupCommentMapper")
public interface GroupCommentMapper {
	//댓글 갯수 구하기
	public int gbcommentCount() throws Exception;
	
	//댓글 목록
	public List<GroupCommentDTO> gbcommentList(int boardNo) throws Exception;

	//댓글 작성
	public int gbcommentInsert(GroupCommentDTO gbcomment) throws Exception; 
	
	//댓글 수정
	public int gbcommentUpdate(GroupCommentDTO content) throws Exception;

	//댓글 삭제
	public int gbcommentDelete(int commentNo) throws Exception;

	
}

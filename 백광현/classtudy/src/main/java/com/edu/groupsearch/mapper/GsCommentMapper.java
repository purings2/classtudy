package com.edu.groupsearch.mapper;

import java.util.List;
import org.springframework.stereotype.*;

import com.edu.groupsearch.domain.GsCommentDTO;


@Repository("com.edu.groupsearch.mapper.GsCommentMapper")
public interface GsCommentMapper {
	//댓글 갯수 구하기
	public int gscommentCount() throws Exception;
	
	//댓글 목록
	public List<GsCommentDTO> gscommentList(int boardNo) throws Exception;

	//댓글 작성
	public int gscommentInsert(GsCommentDTO gscomment) throws Exception; 
	
	//댓글 수정
	public int gscommentUpdate(GsCommentDTO content) throws Exception;

	//댓글 삭제
	public int gscommentDelete(int commentNo) throws Exception;

	
}

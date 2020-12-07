package com.edu.groupboard.mapper;

import java.util.List;
import org.springframework.stereotype.*;

import com.edu.groupboard.domain.GbCommentDTO;


@Repository("com.edu.groupboard.mapper.GbCommentMapper")
public interface GbCommentMapper {
	//댓글 갯수 구하기
	public int gbcommentCount() throws Exception;
	
	//댓글 목록
	public List<GbCommentDTO> gbcommentList(int boardNo) throws Exception;

	//댓글 작성
	public int gbcommentInsert(GbCommentDTO gbcomment) throws Exception; 
	
	//댓글 수정
	public int gbcommentUpdate(GbCommentDTO content) throws Exception;

	//댓글 삭제
	public int gbcommentDelete(int commentNo) throws Exception;

	
}

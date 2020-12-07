package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.domain.BoardDTO;


@Repository("com.edu.mapper.BoardMapper")
public interface BoardMapper {
	
	//게시글 목록 보기
	public List<BoardDTO> groupList() throws Exception;
	
	//게시글 작성
	public int groupInsert(BoardDTO boardDTO) throws Exception;

	//게시글 삭제
	public int boardDelete(int boardNo) throws Exception;
}

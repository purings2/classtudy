package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.dto.BoardDTO;

@Repository("com.edu.mapper.BoardMapper")
public interface BoardMapper {

	//게시글 등록
	public int boardInsert(BoardDTO boardDTO) throws Exception;

	//게시글 목록 보기
	public List<BoardDTO> boardList() throws Exception;

	//게시글 수정
	public int 	boardUpdate(BoardDTO boardDTO) 	throws Exception;
	
	//게시글 삭제
	public int 	boardDelete(Integer b_no)		throws Exception;

	//게시글 상세보기
	public BoardDTO	boardDetail(int b_no)		throws Exception;

}

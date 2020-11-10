package com.edu.board.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.board.domain.BoardDTO;
import com.edu.board.domain.FileDTO;

//@Repository : 해당 클래스가 데이터베이스에 접근하는 클래스임을 명시한다.
@Repository("com.edu.board.mapper.BoardMapper")
public interface BoardMapper {

	//게시글의 개수
	public int boardCount() throws Exception;
	
	//게시글 작성
	public int boardInsert(BoardDTO board) throws Exception;
	
	//게시글 목록 보기
	public List<BoardDTO> boardList() throws Exception;
	
	//게시글 상제정보
	public BoardDTO boardDetail(int bno) throws Exception;
	
	//게시글 수정
	public int boardUpdate(BoardDTO board) throws Exception;
	
	//게시글 삭제
	public int boardDelete(int bno) throws Exception;
	
	//파일올리기
	public int fileInsert(FileDTO file) throws Exception;
	
	//파일 상세 정보
	public FileDTO fileDetail(int bno) throws Exception;
	
}




















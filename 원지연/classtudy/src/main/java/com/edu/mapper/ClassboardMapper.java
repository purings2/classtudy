package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.domain.ClassboardDTO;

@Repository("com.edu.mapper.ClassboardMapper")
public interface ClassboardMapper {

	// TIL 작성
	public int writeTIL(ClassboardDTO cbDTO) throws Exception;
	
	// 게시판 목록 보기
	public List<ClassboardDTO> boardList(int lectureNo) throws Exception;
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception;
	
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	
}

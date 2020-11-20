package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.domain.ClassboardDTO;

@Repository("com.edu.mapper.ClassboardMapper")
public interface ClassboardMapper {

	// TIL 작성
	public int writeTIL(ClassboardDTO cbDTO) throws Exception;

	// TIL 목록 보기
	public List<ClassboardDTO> boardListTIL(int lectureNo, String memberId) throws Exception;
	
	// 게시글 작성
	public int write(ClassboardDTO cbDTO) throws Exception;
	
	// 게시판 목록 보기
	public List<ClassboardDTO> boardList(int lectureNo) throws Exception;
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception;
	
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	
	// 게시글 수정
	public int update(ClassboardDTO cbDTO) throws Exception;
	
	// 게시글 삭제
	public int delete(int boardNo) throws Exception;
	
}

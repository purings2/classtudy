package com.edu.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.domain.ClassboardDTO;

@Repository("com.edu.mapper.ClassboardMapper")
public interface ClassboardMapper {

	// TIL 게시글 작성
	public int writeTIL(ClassboardDTO cbDTO) throws Exception;

	// TIL 게시글 목록 보기
	public List<ClassboardDTO> boardListTIL(int lectureNo, String memberId, int maxNo) throws Exception;
	
	// 화면에 보여줄 TIL 게시글 개수 추출
	public int getTILCount(int lectureNo, String memberId) throws Exception;
	
	// 마지막 TIL 게시글 번호 추출
	public int getNextTILNum(int lectureNo, String memberId) throws Exception;
	
	// TIL 게시글 검색
	public List<ClassboardDTO> searchTIL(int lectureNo, String memberId, String keyword) throws Exception;
	
	// 게시글 작성
	public int write(ClassboardDTO cbDTO) throws Exception;
	
	// 게시판 목록 보기
	public List<ClassboardDTO> boardList(int lectureNo, int maxNo) throws Exception;
	// 게시판 목록 보기 - 정해진 말머리만
	public List<ClassboardDTO> boardList2(int lectureNo, String viewCategory, int maxNo) throws Exception;
	
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int lectureNo) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 정해진 말머리만
	public int getBoardCount2(int lectureNo, String viewCategory) throws Exception;
	
	// 마지막 게시글 번호 추출
	public int getNextNum(int lectureNo) throws Exception;
	// 마지막 게시글 번호 추출 - 정해진 말머리만
	public int getNextNum2(int lectureNo, String viewCategory) throws Exception;
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception;
	
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	
	// 게시글 수정
	public int update(ClassboardDTO cbDTO) throws Exception;
	
	// 게시글 삭제
	public int delete(int boardNo) throws Exception;
	
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception;
	
	// 게시글 검색
	public List<ClassboardDTO> search(int lectureNo, String keyword) throws Exception;
	
	// 게시글 검색
	public List<ClassboardDTO> search2(int lectureNo, String keyword, String viewCategory) throws Exception;
	
}

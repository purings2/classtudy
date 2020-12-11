package com.edu.classboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.classboard.domain.ClassboardDTO;

@Repository("com.edu.classboard.mapper.ClassboardMapper")
public interface ClassboardMapper {
	
	// TIL 게시글 목록 
	public List<ClassboardDTO> boardListTIL(int lectureNo, String memberId, int startNo, int numOfPage) throws Exception;
	// TIL 게시글 목록 - 제목+내용 검색
	public List<ClassboardDTO> searchTILAll(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception;
	// TIL 게시글 목록 - 제목 검색
	public List<ClassboardDTO> searchTILTitle(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception;
	// TIL 게시글 목록 - 내용 검색
	public List<ClassboardDTO> searchTILContent(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception;
	// 화면에 보여줄 TIL 게시글 개수 추출
	public int getTILCount(int lectureNo, String memberId) throws Exception;
	// 화면에 보여줄 TIL 게시글 개수 추출 - 제목+내용 검색
	public int getSearchTILCountAll(int lectureNo, String memberId, String keyword) throws Exception;
	// 화면에 보여줄 TIL 게시글 개수 추출 - 제목 검색
	public int getSearchTILCountTitle(int lectureNo, String memberId, String keyword) throws Exception;
	// 화면에 보여줄 TIL 게시글 개수 추출 - 내용 검색
	public int getSearchTILCountContent(int lectureNo, String memberId, String keyword) throws Exception;
	
	// 게시글 목록 - 전체
	public List<ClassboardDTO> boardListAll(int lectureNo, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 정해진 말머리만
	public List<ClassboardDTO> boardList(int lectureNo, String viewCategory, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 제목+내용 검색
	public List<ClassboardDTO> searchAll(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 목록 - 제목 검색
	public List<ClassboardDTO> searchTitle(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 목록 - 내용 검색
	public List<ClassboardDTO> searchContent(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 목록 - 작성자 검색
	public List<ClassboardDTO> searchWriter(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 전체
	public int getBoardCountAll(int lectureNo) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 정해진 말머리만
	public int getBoardCount(int lectureNo, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int lectureNo, String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int lectureNo, String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int lectureNo, String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int lectureNo, String keyword, String viewCategory) throws Exception;
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception;
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	// 게시글 작성
	public int write(ClassboardDTO cbDTO) throws Exception;
	// 게시글 수정
	public int update(ClassboardDTO cbDTO) throws Exception;
	// 게시글 삭제
	public int delete(int boardNo) throws Exception;
	
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception;
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo) throws Exception;
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo) throws Exception;
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception;
	
}
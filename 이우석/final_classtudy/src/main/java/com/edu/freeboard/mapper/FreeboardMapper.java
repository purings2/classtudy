package com.edu.freeboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.freeboard.domain.FreeboardDTO;

@Repository("com.edu.freeboard.mapper.FreeboardMapper")
public interface FreeboardMapper {
	
	//게시글 작성
	public int write(FreeboardDTO boardDTO) throws Exception;
	//게시글 상세보기
	public FreeboardDTO boardDetail(int boardNo) throws Exception;
	//게시글 수정
	public int boardUpdate(FreeboardDTO boarDTO) throws Exception;
	//게시글 삭제
	public int boardDelete(int boardNo) throws Exception;
	//게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	
	// 게시글 제목+내용 검색
	public List<FreeboardDTO> searchAll(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 제목 검색
	public List<FreeboardDTO> searchTitle(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 내용 검색
	public List<FreeboardDTO> searchContent(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 작성자 검색
	public List<FreeboardDTO> searchWriter(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception;
	// 게시글 검색 - 정해진 말머리만
	public List<FreeboardDTO> search(String keyword, String viewCategory, int startNo, int numOfPage) throws Exception;
	// 게시글 목록
	public List<FreeboardDTO> boardListAll(int startNo, int numOfPage) throws Exception;
	// 게시글 목록(정해진 말머리)
	public List<FreeboardDTO> boardList(String viewCategory, int startNo, int numOfPage) throws Exception;
	// 공지사항 목록 보기
	public List<FreeboardDTO> boardListNotice(int numOfNotice, int noticeCount) throws Exception;
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNoticeFirst(int numOfNotice) throws Exception;
	
	// 공지사항 게시글 개수 추출
	public int getNoticeCount() throws Exception;
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCountAll() throws Exception;
	// 화면에 보여줄 게시글 개수 추출(정해진 말머리만)
	public int getBoardCount(String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword, String viewCategory) throws Exception;
	
	//게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception ;
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo)  throws Exception;
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo)  throws Exception;
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception;
	
}
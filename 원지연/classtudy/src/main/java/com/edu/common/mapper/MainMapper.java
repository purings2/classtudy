package com.edu.common.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.freeboard.domain.FreeboardDTO;

@Repository("com.edu.common.mapper.MainMapper")
public interface MainMapper {
	
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
	// 게시글 목록 - 선택된 태그만
	public List<FreeboardDTO> boardList(String tags, int startNo, int numOfPage) throws Exception;
	// 공지사항 목록 보기
	public List<FreeboardDTO> boardListNotice(int numOfNotice, int noticeCount) throws Exception;
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNoticeFirst(int numOfNotice) throws Exception;
	
	// 공지사항 게시글 개수 추출
	public int getNoticeCount() throws Exception;
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCountAll() throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 선택된 태그만
	public int getBoardCount(String tags) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword, String viewCategory) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword, String viewCategory) throws Exception;
	
}
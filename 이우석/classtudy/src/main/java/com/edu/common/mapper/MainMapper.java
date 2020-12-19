package com.edu.common.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.common.domain.MainDTO;
import com.edu.freeboard.domain.FreeboardDTO;

@Repository("com.edu.common.mapper.MainMapper")
public interface MainMapper {
	
	// 자유게시판 좋아요 순위
	public List<MainDTO> freeBoardlikesList() throws Exception;
	// 자유게시판 조회수 순위
	public List<MainDTO> freeBoardviewsList() throws Exception;
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
	
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCountAll() throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 선택된 태그만
	public int getBoardCount(String tags) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword) throws Exception;
	
	// 메인 페이지 방문자수(오늘)
	public String getMainhits() throws Exception;
	// 메인 페이지 방문자수(총방문자수)
	public int getMainhitsall() throws Exception;
	// 방문자수(오늘) 증가
	public int addMainhits() throws Exception;
	// (오늘) 새로운 방문자 컬럼 추가
	public int insertMainhits() throws Exception;
	// 최근 날짜 컬럼 조회
	public String getRegdate() throws Exception;
	
	// 날짜별 카운트 
	public List<FreeboardDTO> getDaycount() throws Exception;
	
	
	
}
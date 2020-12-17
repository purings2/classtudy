package com.edu.common.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.common.mapper.MainMapper;

@Service("com.edu.common.service.MainService")
public class MainService {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(MainService.class);
	
	@Resource(name = "com.edu.common.mapper.MainMapper")
	MainMapper mainMapper;
	
	//게시글 목록
	public List<FreeboardDTO> boardListAll(int startNo, int numOfPage) throws Exception{
		return mainMapper.boardListAll(startNo, numOfPage);
	}
	// 게시판 목록 보기 - 선택된 태그만
	public List<FreeboardDTO> boardList(String tags, int startNo, int numOfPage) throws Exception {
		return mainMapper.boardList(tags, startNo, numOfPage);
	}
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNoticeFirst(int numOfNotice) throws Exception {
		return mainMapper.boardListNoticeFirst(numOfNotice);
	}
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNotice(int numOfNotice, int noticeCount) throws Exception {
		return mainMapper.boardListNotice(numOfNotice, noticeCount);
	}
	// 공지사항 게시글 개수 추출
	public int getNoticeCount() throws Exception {
		return mainMapper.getNoticeCount();
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCountAll() throws Exception {
		return mainMapper.getBoardCountAll();
	}
	// 화면에 보여줄 게시글 개수 추출 - 선택된 태그만
	public int getBoardCount(String tags) throws Exception {
		return mainMapper.getBoardCount(tags);
	}
	
	// 게시글 제목+내용 검색
	public List<FreeboardDTO> searchAll(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return mainMapper.searchAll(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 제목 검색
	public List<FreeboardDTO> searchTitle(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return mainMapper.searchTitle(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 내용 검색
	public List<FreeboardDTO> searchContent(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return mainMapper.searchContent(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 작성자 검색
	public List<FreeboardDTO> searchWriter(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return mainMapper.searchWriter(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 검색 - 정해진 말머리만
	public List<FreeboardDTO> search(String keyword, String viewCategory, int startNo, int numOfPage) throws Exception {		
		return mainMapper.search(keyword, viewCategory,startNo, numOfPage);
	}
	
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword, String viewCategory) throws Exception {
		return mainMapper.getSearchCountAll(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword, String viewCategory) throws Exception {
		return mainMapper.getSearchCountTitle(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword, String viewCategory) throws Exception {
		return mainMapper.getSearchCountContent(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword, String viewCategory) throws Exception {
		return mainMapper.getSearchCountWriter(keyword, viewCategory);
	}
	
}
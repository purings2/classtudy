package com.edu.common.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.common.domain.MainDTO;
import com.edu.common.mapper.MainMapper;

@Service("com.edu.common.service.MainService")
public class MainService {
	
	// 로깅을 위한 변수 logger를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(MainService.class);
	
	@Resource(name = "com.edu.common.mapper.MainMapper")
	MainMapper mainMapper;
	
	// 자유게시판 좋아요 순위
	public List<MainDTO> freeBoardlikesList() throws Exception {
		return mainMapper.freeBoardlikesList();
	}
	// 자유게시판 조회수 순위
	public List<MainDTO> freeBoardviewsList() throws Exception {
		return mainMapper.freeBoardviewsList();
	}
	// 게시판 목록 보기 - 선택된 태그만
	public List<FreeboardDTO> boardList(String tags, int startNo, int numOfPage) throws Exception {
		return mainMapper.boardList(tags, startNo, numOfPage);
	}
	// 화면에 보여줄 게시글 개수 추출 - 선택된 태그만
	public int getBoardCount(String tags) throws Exception {
		return mainMapper.getBoardCount(tags);
	}
	
	// 게시글 제목+내용 검색
	public List<FreeboardDTO> searchAll(String keyword, int startNo, int numOfPage, String tags) throws Exception {
		return mainMapper.searchAll(keyword, startNo, numOfPage, tags);
	}
	// 게시글 제목 검색
	public List<FreeboardDTO> searchTitle(String keyword, int startNo, int numOfPage, String tags) throws Exception {
		return mainMapper.searchTitle(keyword, startNo, numOfPage, tags);
	}
	// 게시글 내용 검색
	public List<FreeboardDTO> searchContent(String keyword, int startNo, int numOfPage, String tags) throws Exception {
		return mainMapper.searchContent(keyword, startNo, numOfPage, tags);
	}
	// 게시글 작성자 검색
	public List<FreeboardDTO> searchWriter(String keyword, int startNo, int numOfPage, String tags) throws Exception {
		return mainMapper.searchWriter(keyword, startNo, numOfPage, tags);
	}
	// 게시글 검색 - 정해진 말머리만
	public List<FreeboardDTO> search(String keyword, String viewCategory, int startNo, int numOfPage) throws Exception {		
		return mainMapper.search(keyword, viewCategory,startNo, numOfPage);
	}
	
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword, String tags) throws Exception {
		return mainMapper.getSearchCountAll(keyword, tags);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword, String tags) throws Exception {
		return mainMapper.getSearchCountTitle(keyword, tags);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword, String tags) throws Exception {
		return mainMapper.getSearchCountContent(keyword, tags);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword, String tags) throws Exception {
		return mainMapper.getSearchCountWriter(keyword, tags);
	}
	// 메인 페이지 방문자수(오늘)
	public String getMainhits() throws Exception {
		return mainMapper.getMainhits();
	}
	// 메인 페이지 방문자수(총방문자수)
	public int getMainhitsall() throws Exception {
		return mainMapper.getMainhitsall();
	}
	// 방문자수(오늘) 증가
	public int addMainhits() throws Exception {
		return mainMapper.addMainhits();
	}
	// (오늘) 새로운 방문자 컬럼 추가
	public int insertMainhits() throws Exception {
		return mainMapper.insertMainhits();
	}
	// 최근 날짜 컬럼 조회
	public String getRegdate() throws Exception{
		return mainMapper.getRegdate();
	}
	
	
}
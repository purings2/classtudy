package com.edu.freeboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.freeboard.controller.FreeboardController;
import com.edu.freeboard.domain.FreeboardDTO;
import com.edu.freeboard.mapper.FreeboardMapper;

@Service("com.edu.freeboard.service.FreeboardService")
public class FreeboardService {
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER = LoggerFactory.getLogger(FreeboardController.class);
	
	@Resource(name = "com.edu.freeboard.mapper.FreeboardMapper")
	FreeboardMapper freeboardMapper;
	
	//게시글 작성
	public int write(FreeboardDTO boardDTO) throws Exception{
		LOGGER.info("Service write(freeboard) : " + boardDTO);
		return freeboardMapper.write(boardDTO);		
	}
	//게시글 상세보기
	public FreeboardDTO boardDetail(int boardNo) throws Exception {
		return freeboardMapper.boardDetail(boardNo);
	}
	//게시글 수정
	public int boardUpdate(FreeboardDTO boardDTO) throws Exception {
		LOGGER.info("Service update : " + boardDTO);
		return freeboardMapper.boardUpdate(boardDTO);		
	}
	//게시글 삭제
	public int boardDelete(int boardNo) throws Exception {
		return freeboardMapper.boardDelete(boardNo);	
	}
	//게시글 조회수 증가
	public int addViews(int boardNo) throws Exception{
		return freeboardMapper.addViews(boardNo);
	}
	//게시글 목록
	public List<FreeboardDTO> boardListAll(int startNo, int numOfPage) throws Exception{
		return freeboardMapper.boardListAll(startNo, numOfPage);
	}
	// 게시판 목록 보기 - 정해진 말머리만
	public List<FreeboardDTO> boardList(String viewCategory, int startNo, int numOfPage) throws Exception {
		return freeboardMapper.boardList(viewCategory, startNo, numOfPage);
	}
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNoticeFirst(int numOfNotice) throws Exception {
		return freeboardMapper.boardListNoticeFirst(numOfNotice);
	}
	// 공지사항 목록 보기 - 첫번째
	public List<FreeboardDTO> boardListNotice(int numOfNotice, int noticeCount) throws Exception {
		return freeboardMapper.boardListNotice(numOfNotice, noticeCount);
	}
	// 공지사항 게시글 개수 추출
	public int getNoticeCount() throws Exception {
		return freeboardMapper.getNoticeCount();
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCountAll() throws Exception {
		return freeboardMapper.getBoardCountAll();
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(String viewCategory) throws Exception {
		return freeboardMapper.getBoardCount(viewCategory);
	}
	
	// 게시글 제목+내용 검색
	public List<FreeboardDTO> searchAll(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return freeboardMapper.searchAll(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 제목 검색
	public List<FreeboardDTO> searchTitle(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return freeboardMapper.searchTitle(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 내용 검색
	public List<FreeboardDTO> searchContent(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return freeboardMapper.searchContent(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 작성자 검색
	public List<FreeboardDTO> searchWriter(String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return freeboardMapper.searchWriter(keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 검색 - 정해진 말머리만
	public List<FreeboardDTO> search(String keyword, String viewCategory, int startNo, int numOfPage) throws Exception {		
		return freeboardMapper.search(keyword, viewCategory,startNo, numOfPage);
	}
	
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(String keyword, String viewCategory) throws Exception {
		return freeboardMapper.getSearchCountAll(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(String keyword, String viewCategory) throws Exception {
		return freeboardMapper.getSearchCountTitle(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(String keyword, String viewCategory) throws Exception {
		return freeboardMapper.getSearchCountContent(keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(String keyword, String viewCategory) throws Exception {
		return freeboardMapper.getSearchCountWriter(keyword, viewCategory);
	}
	
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception  {
		return freeboardMapper.addLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception {
		return freeboardMapper.writeLikes(boardNo, memberId);		
	}
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo) throws Exception {
		return freeboardMapper.getLikes(boardNo);
	}
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception {
		return freeboardMapper.likeCheck(boardNo, memberId);
	}
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo) throws Exception {
		return freeboardMapper.subtractLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception {
		return freeboardMapper.deleteLikes(boardNo, memberId);
	}
		
		
}

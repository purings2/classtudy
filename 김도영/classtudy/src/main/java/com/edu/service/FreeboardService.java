package com.edu.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.controller.FreeboardController;
import com.edu.domain.ClassboardDTO;
import com.edu.domain.FreeboardDTO;
import com.edu.mapper.FreeboardMapper;

import net.bytebuddy.build.Plugin.Engine.Dispatcher.Materializable.ForRetainedElement;

@Service("com.edu.service.FreeboardService")
public class FreeboardService {
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(FreeboardController.class);
	
	@Resource(name = "com.edu.mapper.FreeboardMapper")
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
	public List<FreeboardDTO> boardList(int startNo, int numOfPage) throws Exception{
		return freeboardMapper.boardList(startNo, numOfPage);		
	}
	// 게시판 목록 보기 - 정해진 말머리만
	public List<FreeboardDTO> boardList2( String viewCategory, int startNo, int numOfPage) throws Exception {
		return freeboardMapper.boardList2(viewCategory, startNo, numOfPage);
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount() throws Exception {
		return freeboardMapper.getBoardCount();
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount2(String viewCategory) throws Exception {
		return freeboardMapper.getBoardCount2(viewCategory);
	}	
	// 게시글 검색
	public List<FreeboardDTO> search(String keyword, int startNo, int numOfPage) throws Exception {	
		return freeboardMapper.search(keyword, startNo,numOfPage);
	}
	// 게시글 검색 - 정해진 말머리만
	public List<FreeboardDTO> search2(String keyword, String viewCategory, int startNo, int numOfPage) throws Exception {		
		return freeboardMapper.search2(keyword, viewCategory,startNo, numOfPage);
	}
	// 화면에 보여줄 게시글 개수 추출 - 검색 했을 때
	public int getSearchCount(String keyword) throws Exception {
		return freeboardMapper.getSearchCount(keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 정해진 말머리만, 검색 했을 때
	public int getSearchCount2(String viewCategory, String keyword) throws Exception {
		return freeboardMapper.getSearchCount2(viewCategory, keyword);
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

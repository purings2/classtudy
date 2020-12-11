package com.edu.classboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.classboard.domain.ClassboardDTO;
import com.edu.classboard.mapper.ClassboardMapper;

@Service("com.edu.classboard.service.ClassboardService")
public class ClassboardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger logger = LoggerFactory.getLogger(ClassboardService.class);
	
	@Resource(name="com.edu.classboard.mapper.ClassboardMapper")
	ClassboardMapper classboardMapper;
	
	//----------------------------------------------------------------
	// 게시글 목록 가져오기 관련
	//----------------------------------------------------------------
	// TIL 게시글 목록
	public List<ClassboardDTO> boardListTIL(int lectureNo, String memberId, int startNo, int numOfPage) throws Exception {
		return classboardMapper.boardListTIL(lectureNo, memberId, startNo, numOfPage);
	}
	// TIL 게시글 목록 - 제목+내용 검색
	public List<ClassboardDTO> searchTILAll(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception {
		return classboardMapper.searchTILAll(lectureNo, memberId, keyword, startNo, numOfPage);
	}
	// TIL 게시글 목록 - 제목 검색
	public List<ClassboardDTO> searchTILTitle(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception {
		return classboardMapper.searchTILTitle(lectureNo, memberId, keyword, startNo, numOfPage);
	}
	// TIL 게시글 목록 - 내용 검색
	public List<ClassboardDTO> searchTILContent(int lectureNo, String memberId, String keyword, int startNo, int numOfPage) throws Exception {
		return classboardMapper.searchTILContent(lectureNo, memberId, keyword, startNo, numOfPage);
	}
	// 화면에 보여줄 TIL 게시글 개수 추출
	public int getTILCount(int lectureNo, String memberId) throws Exception {
		return classboardMapper.getTILCount(lectureNo, memberId);
	}
	// 화면에 보여줄 TIL 게시글 개수 추출 - 제목+내용 검색
	public int getSearchTILCountAll(int lectureNo, String memberId, String keyword) throws Exception {
		return classboardMapper.getSearchTILCountAll(lectureNo, memberId, keyword);
	}
	// 화면에 보여줄 TIL 게시글 개수 추출 - 제목 검색
	public int getSearchTILCountTitle(int lectureNo, String memberId, String keyword) throws Exception {
		return classboardMapper.getSearchTILCountTitle(lectureNo, memberId, keyword);
	}
	// 화면에 보여줄 TIL 게시글 개수 추출 - 내용 검색
	public int getSearchTILCountContent(int lectureNo, String memberId, String keyword) throws Exception {
		return classboardMapper.getSearchTILCountContent(lectureNo, memberId, keyword);
	}
	//----------------------------------------------------------------
	// 게시글 목록 - 전체
	public List<ClassboardDTO> boardListAll(int lectureNo, int startNo, int numOfPage) throws Exception {
		return classboardMapper.boardListAll(lectureNo, startNo, numOfPage);
	}
	// 게시글 목록 - 정해진 말머리만
	public List<ClassboardDTO> boardList(int lectureNo, String viewCategory, int startNo, int numOfPage) throws Exception {
		return classboardMapper.boardList(lectureNo, viewCategory, startNo, numOfPage);
	}
	// 게시글 목록 - 제목+내용 검색
	public List<ClassboardDTO> searchAll(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return classboardMapper.searchAll(lectureNo, keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 목록 - 제목 검색
	public List<ClassboardDTO> searchTitle(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return classboardMapper.searchTitle(lectureNo, keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 목록 - 내용 검색
	public List<ClassboardDTO> searchContent(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return classboardMapper.searchContent(lectureNo, keyword, startNo, numOfPage, viewCategory);
	}
	// 게시글 목록 - 작성자 검색
	public List<ClassboardDTO> searchWriter(int lectureNo, String keyword, int startNo, int numOfPage, String viewCategory) throws Exception {
		return classboardMapper.searchWriter(lectureNo, keyword, startNo, numOfPage, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 전체
	public int getBoardCountAll(int lectureNo) throws Exception {
		return classboardMapper.getBoardCountAll(lectureNo);
	}
	// 화면에 보여줄 게시글 개수 추출 - 정해진 말머리만
	public int getBoardCount(int lectureNo, String viewCategory) throws Exception {
		return classboardMapper.getBoardCount(lectureNo, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int lectureNo, String keyword, String viewCategory) throws Exception {
		return classboardMapper.getSearchCountAll(lectureNo, keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int lectureNo, String keyword, String viewCategory) throws Exception {
		return classboardMapper.getSearchCountTitle(lectureNo, keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int lectureNo, String keyword, String viewCategory) throws Exception {
		return classboardMapper.getSearchCountContent(lectureNo, keyword, viewCategory);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int lectureNo, String keyword, String viewCategory) throws Exception {
		return classboardMapper.getSearchCountWriter(lectureNo, keyword, viewCategory);
	}
	//----------------------------------------------------------------
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception {
		return classboardMapper.boardDetail(boardNo);
	}
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception {
		return classboardMapper.addViews(boardNo);
	}
	// 게시글 작성
	public int write(ClassboardDTO cbDTO) throws Exception {
		logger.info("Service write : " + cbDTO);
		return classboardMapper.write(cbDTO);
	}
	// 게시글 수정
	public int update(ClassboardDTO cbDTO) throws Exception {
		//logger.info("Service update : " + cbDTO);
		return classboardMapper.update(cbDTO);
	}
	// 게시글 삭제
	public int delete(int boardNo) throws Exception {
		return classboardMapper.delete(boardNo);
	}
	
	//----------------------------------------------------------------
	// 게시글 좋아요 관련
	//----------------------------------------------------------------
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception {
		return classboardMapper.addLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception {
		return classboardMapper.writeLikes(boardNo, memberId);
	}
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo) throws Exception {
		return classboardMapper.getLikes(boardNo);
	}
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception {
		return classboardMapper.likeCheck(boardNo, memberId);
	}
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo) throws Exception {
		return classboardMapper.subtractLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception {
		return classboardMapper.deleteLikes(boardNo, memberId);
	}
	//----------------------------------------------------------------
	
}
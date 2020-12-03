package com.edu.classboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.edu.classboard.domain.ClassboardDTO;
import com.edu.classboard.mapper.ClassboardMapper;
import com.edu.member.controller.MemberController;

@Service("com.edu.classboard.service.ClassboardService")
public class ClassboardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger logger
		= LoggerFactory.getLogger(MemberController.class);
	
	@Resource(name="com.edu.classboard.mapper.ClassboardMapper")
	ClassboardMapper classboardMapper;
	
	// TIL 게시글 작성
	public int writeTIL(ClassboardDTO cbDTO) throws Exception {
		//logger.info("Service writeTIL : " + cbDTO);
		return classboardMapper.writeTIL(cbDTO);
	}
	
	// TIL 게시글 목록 보기
	public List<ClassboardDTO> boardListTIL(int lectureNo, String memberId, int maxNo) throws Exception {
		return classboardMapper.boardListTIL(lectureNo, memberId, maxNo);
	}
	
	// 화면에 보여줄 TIL 게시글 개수 추출
	public int getTILCount(int lectureNo, String memberId) throws Exception {
		return classboardMapper.getTILCount(lectureNo, memberId);
	}
	
	// 마지막 TIL 게시글 번호 추출
	public int getNextTILNum(int lectureNo, String memberId) throws Exception {
		return classboardMapper.getNextTILNum(lectureNo, memberId) + 1;
	}
	
	// TIL 게시글 검색
	public List<ClassboardDTO> searchTIL(int lectureNo, String memberId, String keyword) throws Exception {
		return classboardMapper.searchTIL(lectureNo, memberId, keyword);
	}
	
	// 게시글 작성
	public int write(ClassboardDTO cbDTO) throws Exception {
		//logger.info("Service write : " + cbDTO);
		return classboardMapper.write(cbDTO);
	}
	
	// 게시판 목록 보기
	public List<ClassboardDTO> boardList(int lectureNo, int maxNo) throws Exception {
		return classboardMapper.boardList(lectureNo, maxNo);
	}
	// 게시판 목록 보기 - 정해진 말머리만
	public List<ClassboardDTO> boardList2(int lectureNo, String viewCategory, int maxNo) throws Exception {
		return classboardMapper.boardList2(lectureNo, viewCategory, maxNo);
	}
	
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int lectureNo) throws Exception {
		return classboardMapper.getBoardCount(lectureNo);
	}
	// 화면에 보여줄 게시글 개수 추출 - 정해진 말머리만
	public int getBoardCount2(int lectureNo, String viewCategory) throws Exception {
		return classboardMapper.getBoardCount2(lectureNo, viewCategory);
	}
	
	// 마지막 게시글 번호 추출
	public int getNextNum(int lectureNo) throws Exception {
		return classboardMapper.getNextNum(lectureNo) + 1;
	}
	// 마지막 게시글 번호 추출 - 정해진 말머리만
	public int getNextNum2(int lectureNo, String viewCategory) throws Exception {
		return classboardMapper.getNextNum2(lectureNo, viewCategory) + 1;
	}
	
	// 게시글 상세 보기
	public ClassboardDTO boardDetail(int boardNo) throws Exception {
		return classboardMapper.boardDetail(boardNo);
	}
	
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception {
		return classboardMapper.addViews(boardNo);
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
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception {
		return classboardMapper.addLikes(boardNo);
	}
	// 게시글 검색
	public List<ClassboardDTO> search(int lectureNo, String keyword) throws Exception {
		return classboardMapper.search(lectureNo, keyword);
	}
	// 게시글 검색 - 정해진 말머리만
	public List<ClassboardDTO> search2(int lectureNo, String keyword, String viewCategory) throws Exception {
		return classboardMapper.search2(lectureNo, keyword, viewCategory);
	}
	
}

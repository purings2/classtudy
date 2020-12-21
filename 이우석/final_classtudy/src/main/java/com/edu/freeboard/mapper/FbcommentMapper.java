package com.edu.freeboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.freeboard.domain.FbcommentDTO;

@Repository("com.edu.freeboard.mapper.FbcommentMapper")
public interface FbcommentMapper {
	
	// 댓글 목록 보기
	public List<FbcommentDTO> commentList(int boardNo, String memberId) throws Exception;	
	// 댓글 작성
	public int commentInsert(FbcommentDTO comment) throws Exception;	
	// 댓글 수정
	public int commentUpdate(String content, int commentNo) throws Exception;	
	// 댓글 삭제
	public int commentDelete(int commentNo) throws Exception;
	
	//게시글 좋아요수 증가
	public int addLikes(int commentNo) throws Exception ;
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int commentNo, String memberId) throws Exception;
	// 게시글 좋아요수 가져오기
	public int getLikes(int commentNo)  throws Exception;
	// 게시글 좋아요 여부 검사
	public int likeCheck(int commentNo, String memberId) throws Exception;
	// 게시글 좋아요수 감소
	public int subtractLikes(int commentNo) throws Exception;
	// 좋아요 테이블에 좋아요 내용 삭제	
	public int deleteLikes(int commentNo, String memberId) throws Exception;
	
	


}
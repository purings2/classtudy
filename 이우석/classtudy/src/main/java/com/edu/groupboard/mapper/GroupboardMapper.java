package com.edu.groupboard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.groupboard.domain.GroupboardDTO;

@Repository("com.edu.groupboard.mapper.GroupboardMapper")
public interface GroupboardMapper {
	
	// 게시글 목록
	public List<GroupboardDTO> boardList(int groupNo, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 제목+내용 검색
	public List<GroupboardDTO> searchAll(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 제목 검색
	public List<GroupboardDTO> searchTitle(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 내용 검색
	public List<GroupboardDTO> searchContent(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	// 게시글 목록 - 작성자 검색
	public List<GroupboardDTO> searchWriter(int groupNo, String keyword, int startNo, int numOfPage) throws Exception;
	
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int groupNo) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int groupNo, String keyword) throws Exception;
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int groupNo, String keyword) throws Exception;
	
	//게시글 상세보기
	public GroupboardDTO boardDetail(int boardNo) throws Exception;
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception;
	//게시글 작성
	public int write(GroupboardDTO boardDTO) throws Exception;
	// 게시글 수정
	public int update(GroupboardDTO boardDTO) throws Exception;
	// 게시글 삭제
	public int delete(int boardNo) throws Exception;
	
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception;
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo) throws Exception;
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception;
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo) throws Exception;
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception;
	
}
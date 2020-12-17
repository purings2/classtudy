package com.edu.groupboard.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.edu.groupboard.domain.GroupboardDTO;
import com.edu.groupboard.mapper.GroupboardMapper;

@Service("com.edu.groupboard.service.GroupboardService")
public class GroupboardService {
	
	@Resource(name = "com.edu.groupboard.mapper.GroupboardMapper")
	GroupboardMapper groupboardMapper;
	
	//----------------------------------------------------------------
	// 게시글 목록 가져오기 관련
	//----------------------------------------------------------------
	// 게시글 목록
	public List<GroupboardDTO> boardList(int groupNo, int startNo, int numOfPage) throws Exception {
		return groupboardMapper.boardList(groupNo, startNo, numOfPage);
	}
	// 게시글 목록 - 제목+내용 검색
	public List<GroupboardDTO> searchAll(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupboardMapper.searchAll(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 제목 검색
	public List<GroupboardDTO> searchTitle(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupboardMapper.searchTitle(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 내용 검색
	public List<GroupboardDTO> searchContent(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupboardMapper.searchContent(groupNo, keyword, startNo, numOfPage);
	}
	// 게시글 목록 - 작성자 검색
	public List<GroupboardDTO> searchWriter(int groupNo, String keyword, int startNo, int numOfPage) throws Exception {
		return groupboardMapper.searchWriter(groupNo, keyword, startNo, numOfPage);
	}
	// 화면에 보여줄 게시글 개수 추출
	public int getBoardCount(int viewGroupNo) throws Exception {
		return groupboardMapper.getBoardCount(viewGroupNo);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목+내용 검색 했을 때
	public int getSearchCountAll(int groupNo, String keyword) throws Exception {
		return groupboardMapper.getSearchCountAll(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 제목 검색 했을 때
	public int getSearchCountTitle(int groupNo, String keyword) throws Exception {
		return groupboardMapper.getSearchCountTitle(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 내용 검색 했을 때
	public int getSearchCountContent(int groupNo, String keyword) throws Exception {
		return groupboardMapper.getSearchCountContent(groupNo, keyword);
	}
	// 화면에 보여줄 게시글 개수 추출 - 작성자 검색 했을 때
	public int getSearchCountWriter(int groupNo, String keyword) throws Exception {
		return groupboardMapper.getSearchCountWriter(groupNo, keyword);
	}
	//----------------------------------------------------------------
	
	//게시글 상세보기
	public GroupboardDTO boardDetail(int boardNo) throws Exception {
		return groupboardMapper.boardDetail(boardNo);
	}
	// 게시글 조회수 증가
	public int addViews(int boardNo) throws Exception {
		return groupboardMapper.addViews(boardNo);
	}
	//게시글 작성
	public int write(GroupboardDTO boardDTO) throws Exception {
		return groupboardMapper.write(boardDTO);
	}
	// 게시글 수정
	public int update(GroupboardDTO boardDTO) throws Exception {
		return groupboardMapper.update(boardDTO);
	}
	// 게시글 삭제
	public int delete(int boardNo) throws Exception {
		return groupboardMapper.delete(boardNo);
	}
	
	//----------------------------------------------------------------
	// 게시글 좋아요 관련
	//----------------------------------------------------------------
	// 게시글 좋아요수 증가
	public int addLikes(int boardNo) throws Exception {
		return groupboardMapper.addLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 기록
	public int writeLikes(int boardNo, String memberId) throws Exception {
		return groupboardMapper.writeLikes(boardNo, memberId);
	}
	// 게시글 좋아요수 가져오기
	public int getLikes(int boardNo) throws Exception {
		return groupboardMapper.getLikes(boardNo);
	}
	// 게시글 좋아요 여부 검사
	public int likeCheck(int boardNo, String memberId) throws Exception {
		return groupboardMapper.likeCheck(boardNo, memberId);
	}
	// 게시글 좋아요수 감소
	public int subtractLikes(int boardNo) throws Exception {
		return groupboardMapper.subtractLikes(boardNo);
	}
	// 좋아요 테이블에 좋아요 내용 삭제
	public int deleteLikes(int boardNo, String memberId) throws Exception {
		return groupboardMapper.deleteLikes(boardNo, memberId);
	}
	//----------------------------------------------------------------
	
}
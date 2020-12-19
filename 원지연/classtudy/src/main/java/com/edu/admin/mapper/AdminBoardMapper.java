package com.edu.admin.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.PagingDTO;
import com.edu.member.domain.MemberDTO;

@Repository("com.edu.admin.mapper.AdminBoardMapper")
public interface AdminBoardMapper {
	
	// 전체 게시판의 전체 게시글 개수
	public int getAdminBoardCount() throws Exception;
	// 클래스게시판의 전체 게시글 개수
	public int getAdminClassboardCount() throws Exception;
	// 자유게시판의 전체 게시글 개수
	public int getAdminFreeboardCount() throws Exception;
	// 그룹게시판의 전체 게시글 개수
	public int getAdminGroupboardCount() throws Exception;
	// 전체 게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminBoardList(int startNo, int numOfPage) throws Exception;
	// 클래스게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminClassboardList(int startNo, int numOfPage) throws Exception;
	// 자유게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminFreeboardList(int startNo, int numOfPage) throws Exception;
	// 그룹게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminGroupboardList(int startNo, int numOfPage) throws Exception;
	
	// 클래스게시판 게시글 상세정보
	public AdminBoardDTO classboardDetail(int boardNo) throws Exception;
	// 자유게시판 게시글 상세정보
	public AdminBoardDTO freeboardDetail(int boardNo) throws Exception;
	// 그룹게시판 게시글 상세정보
	public AdminBoardDTO groupboardDetail(int boardNo) throws Exception;
	// 클래스게시판 게시글 삭제
	public int classboardDelete(int boardNo) throws Exception;
	// 자유게시판 게시글 삭제
	public int freeboardDelete(int boardNo) throws Exception;
	// 그룹게시판 게시글 삭제
	public int groupboardDelete(int boardNo) throws Exception;
	
	// 자유게시판 공지사항의 전체 게시글 개수
	public int getFreeboardNoticeCount() throws Exception;
	// 자유게시판 공지사항 게시글 목록 - 페이징
	public List<AdminBoardDTO> freeboardNoticeList(int startNo, int numOfPage) throws Exception;
	// 자유게시판 공지사항 게시글 작성
	public int writefreeboardNotice(AdminBoardDTO adminBoardDTO) throws Exception;
	// 자유게시판 공지사항 게시글 수정
	public int updatefreeboardNotice(AdminBoardDTO adminBoardDTO) throws Exception;
	
	// 전체 게시판의 전체 댓글 개수
	public int getAdminCommentCount() throws Exception;
	// 클래스게시판의 전체 댓글 개수
	public int getAdminCbCommentCount() throws Exception;
	// 자유게시판의 전체 댓글 개수
	public int getAdminFbCommentCount() throws Exception;
	// 그룹게시판의 전체 댓글 개수
	public int getAdminGbCommentCount() throws Exception;
	// 전체 게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminCommentList(int startNo, int numOfPage) throws Exception;
	// 클래스게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminCbCommentList(int startNo, int numOfPage) throws Exception;
	// 자유게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminFbCommentList(int startNo, int numOfPage) throws Exception;
	// 그룹게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminGbCommentList(int startNo, int numOfPage) throws Exception;
	
	// 클래스게시판 댓글 삭제
	public int cbCommentDelete(int commentNo) throws Exception;
	// 자유게시판 댓글 삭제
	public int fbCommentDelete(int commentNo) throws Exception;
	// 그룹게시판 댓글 삭제
	public int gbCommentDelete(int commentNo) throws Exception;
	
}
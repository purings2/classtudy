package com.edu.admin.service;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import java.util.List;

import com.edu.admin.cotroller.AdminController;
import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.PagingDTO;
import com.edu.admin.mapper.AdminBoardMapper;
import com.edu.member.domain.MemberDTO;

@Service("com.edu.admin.service.AdminBoardService")
public class AdminBoardService {
	
	// 로깅을 위한 변수 LOGGER를 선언한다.
	private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);
	
	@Resource(name="com.edu.admin.mapper.AdminBoardMapper")
	AdminBoardMapper adBoardMapper;
	
	// 전체 게시판의 전체 게시글 개수
	public int getAdminBoardCount() throws Exception {
		return adBoardMapper.getAdminBoardCount();
	}
	// 클래스게시판의 전체 게시글 개수
	public int getAdminClassboardCount() throws Exception {
		return adBoardMapper.getAdminClassboardCount();
	}
	// 자유게시판의 전체 게시글 개수
	public int getAdminFreeboardCount() throws Exception {
		return adBoardMapper.getAdminFreeboardCount();
	}
	// 그룹게시판의 전체 게시글 개수
	public int getAdminGroupboardCount() throws Exception {
		return adBoardMapper.getAdminGroupboardCount();
	}
	// 전체 게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminBoardList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminBoardList(startNo, numOfPage);
	}
	// 클래스게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminClassboardList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminClassboardList(startNo, numOfPage);
	}
	// 자유게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminFreeboardList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminFreeboardList(startNo, numOfPage);
	}
	// 그룹게시판의 게시글 목록 - 페이징
	public List<AdminBoardDTO> adminGroupboardList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminGroupboardList(startNo, numOfPage);
	}
	
	// 클래스게시판 게시글 상세정보
	public AdminBoardDTO classboardDetail(int boardNo) throws Exception {
		return adBoardMapper.classboardDetail(boardNo);
	}
	// 자유게시판 게시글 상세정보
	public AdminBoardDTO freeboardDetail(int boardNo) throws Exception {
		return adBoardMapper.freeboardDetail(boardNo);
	}
	// 그룹게시판 게시글 상세정보
	public AdminBoardDTO groupboardDetail(int boardNo) throws Exception {
		return adBoardMapper.groupboardDetail(boardNo);
	}
	
	// 클래스게시판 게시글 삭제
	public int classboardDelete(int boardNo) throws Exception {
		return adBoardMapper.classboardDelete(boardNo);
	}
	// 자유게시판 게시글 삭제
	public int freeboardDelete(int boardNo) throws Exception {
		return adBoardMapper.freeboardDelete(boardNo);
	}
	// 그룹게시판 게시글 삭제
	public int groupboardDelete(int boardNo) throws Exception {
		return adBoardMapper.groupboardDelete(boardNo);
	}
	
	// 자유게시판 공지사항의 전체 게시글 개수
	public int getFreeboardNoticeCount() throws Exception {
		return adBoardMapper.getFreeboardNoticeCount();
	}
	// 자유게시판 공지사항 게시글 목록 - 페이징
	public List<AdminBoardDTO> freeboardNoticeList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.freeboardNoticeList(startNo, numOfPage);
	}
	// 자유게시판 공지사항 게시글 작성
	public int writefreeboardNotice(AdminBoardDTO adminBoardDTO) throws Exception {
		return adBoardMapper.writefreeboardNotice(adminBoardDTO);
	}
	// 자유게시판 공지사항 게시글 수정
	public int updatefreeboardNotice(AdminBoardDTO adminBoardDTO) throws Exception {
		return adBoardMapper.updatefreeboardNotice(adminBoardDTO);
	}
	
	// 전체 게시판의 전체 댓글 개수
	public int getAdminCommentCount() throws Exception {
		return adBoardMapper.getAdminCommentCount();
	}
	// 클래스게시판의 전체 댓글 개수
	public int getAdminCbCommentCount() throws Exception {
		return adBoardMapper.getAdminCbCommentCount();
	}
	// 자유게시판의 전체 댓글 개수
	public int getAdminFbCommentCount() throws Exception {
		return adBoardMapper.getAdminFbCommentCount();
	}
	// 그룹게시판의 전체 댓글 개수
	public int getAdminGbCommentCount() throws Exception {
		return adBoardMapper.getAdminGbCommentCount();
	}
	// 전체 게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminCommentList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminCommentList(startNo, numOfPage);
	}
	// 클래스게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminCbCommentList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminCbCommentList(startNo, numOfPage);
	}
	// 자유게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminFbCommentList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminFbCommentList(startNo, numOfPage);
	}
	// 그룹게시판의 댓글 목록 - 페이징
	public List<AdminBoardDTO> adminGbCommentList(int startNo, int numOfPage) throws Exception {
		return adBoardMapper.adminGbCommentList(startNo, numOfPage);
	}
	
	// 클래스게시판 댓글 삭제
	public int cbCommentDelete(int commentNo) throws Exception {
		return adBoardMapper.cbCommentDelete(commentNo);
	}
	// 자유게시판 댓글 삭제
	public int fbCommentDelete(int commentNo) throws Exception {
		return adBoardMapper.fbCommentDelete(commentNo);
	}
	// 그룹게시판 댓글 삭제
	public int gbCommentDelete(int commentNo) throws Exception {
		return adBoardMapper.gbCommentDelete(commentNo);
	}
	
}
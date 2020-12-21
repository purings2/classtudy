package com.edu.admin.service;

import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import java.util.List;

import com.edu.admin.cotroller.AdminController;
import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.AdminCommentDTO;
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
	
	// 전체 게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchAdminboardCountAll(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminboardCountAll(keyword);
	}
	// 전체 게시판에서 검색한 게시글 개수 - 제목
	public int getSearchAdminboardCountTitle(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminboardCountTitle(keyword);
	}
	// 전체 게시판에서 검색한 게시글 개수 - 내용
	public int getSearchAdminboardCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminboardCountContent(keyword);
	}
	// 전체 게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchAdminboardCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminboardCountWriter(keyword);
	}
	// 전체 게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchAdminBoardAll(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminBoardAll(keyword, startNo, numOfPage);
	}
	// 전체 게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchAdminBoardTitle(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminBoardTitle(keyword, startNo, numOfPage);
	}
	// 전체 게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchAdminBoardContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminBoardContent(keyword, startNo, numOfPage);
	}
	// 전체 게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchAdminBoardWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminBoardWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 클래스게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchClassboardCountAll(String keyword) throws Exception {
		return adBoardMapper.getSearchClassboardCountAll(keyword);
	}
	// 클래스게시판에서 검색한 게시글 개수 - 제목
	public int getSearchClassboardCountTitle(String keyword) throws Exception {
		return adBoardMapper.getSearchClassboardCountTitle(keyword);
	}
	// 클래스게시판에서 검색한 게시글 개수 - 내용
	public int getSearchClassboardCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchClassboardCountContent(keyword);
	}
	// 클래스게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchClassboardCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchClassboardCountWriter(keyword);
	}
	// 클래스게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchClassBoardAll(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassBoardAll(keyword, startNo, numOfPage);
	}
	// 클래스게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchClassBoardTitle(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassBoardTitle(keyword, startNo, numOfPage);
	}
	// 클래스게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchClassBoardContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassBoardContent(keyword, startNo, numOfPage);
	}
	// 클래스게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchClassBoardWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassBoardWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 자유게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchFreeboardCountAll(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeboardCountAll(keyword);
	}
	// 자유게시판에서 검색한 게시글 개수 - 제목
	public int getSearchFreeboardCountTitle(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeboardCountTitle(keyword);
	}
	// 자유게시판에서 검색한 게시글 개수 - 내용
	public int getSearchFreeboardCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeboardCountContent(keyword);
	}
	// 자유게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchFreeboardCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeboardCountWriter(keyword);
	}
	// 자유게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchFreeBoardAll(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeBoardAll(keyword, startNo, numOfPage);
	}
	// 자유게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchFreeBoardTitle(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeBoardTitle(keyword, startNo, numOfPage);
	}
	// 자유게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchFreeBoardContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeBoardContent(keyword, startNo, numOfPage);
	}
	// 자유게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchFreeBoardWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeBoardWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 그룹게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchGroupboardCountAll(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupboardCountAll(keyword);
	}
	// 그룹게시판에서 검색한 게시글 개수 - 제목
	public int getSearchGroupboardCountTitle(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupboardCountTitle(keyword);
	}
	// 그룹게시판에서 검색한 게시글 개수 - 내용
	public int getSearchGroupboardCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupboardCountContent(keyword);
	}
	// 그룹게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchGroupboardCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupboardCountWriter(keyword);
	}
	// 그룹게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchGroupBoardAll(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupBoardAll(keyword, startNo, numOfPage);
	}
	// 그룹게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchGroupBoardTitle(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupBoardTitle(keyword, startNo, numOfPage);
	}
	// 그룹게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchGroupBoardContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupBoardContent(keyword, startNo, numOfPage);
	}
	// 그룹게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchGroupBoardWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupBoardWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	
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
	
	// 전체 게시판에서 검색한 댓글 개수 - 내용
	public int getSearchAdminCommentCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminCommentCountContent(keyword);
	}
	// 전체 게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchAdminCommentCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchAdminCommentCountWriter(keyword);
	}
	// 전체 게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchAdminCommentContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminCommentContent(keyword, startNo, numOfPage);
	}
	// 전체 게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchAdminCommentWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchAdminCommentWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 클래스게시판에서 검색한 댓글 개수 - 내용
	public int getSearchClassCommentCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchClassCommentCountContent(keyword);
	}
	// 클래스게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchClassCommentCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchClassCommentCountWriter(keyword);
	}
	// 클래스게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchClassCommentContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassCommentContent(keyword, startNo, numOfPage);
	}
	// 클래스게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchClassCommentWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchClassCommentWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 자유게시판에서 검색한 댓글 개수 - 내용
	public int getSearchFreeCommentCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeCommentCountContent(keyword);
	}
	// 자유게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchFreeCommentCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchFreeCommentCountWriter(keyword);
	}
	// 자유게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchFreeCommentContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeCommentContent(keyword, startNo, numOfPage);
	}
	// 자유게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchFreeCommentWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchFreeCommentWriter(keyword, startNo, numOfPage);
	}
	//-----------------------------------------------------------------------
	// 그룹게시판에서 검색한 댓글 개수 - 내용
	public int getSearchGroupCommentCountContent(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupCommentCountContent(keyword);
	}
	// 그룹게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchGroupCommentCountWriter(String keyword) throws Exception {
		return adBoardMapper.getSearchGroupCommentCountWriter(keyword);
	}
	// 그룹게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchGroupCommentContent(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupCommentContent(keyword, startNo, numOfPage);
	}
	// 그룹게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchGroupCommentWriter(String keyword, int startNo, int numOfPage) throws Exception {
		return adBoardMapper.searchGroupCommentWriter(keyword, startNo, numOfPage);
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
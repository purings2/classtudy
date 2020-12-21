package com.edu.admin.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.AdminCommentDTO;
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
	
	// 전체 게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchAdminboardCountAll(String keyword) throws Exception;
	// 전체 게시판에서 검색한 게시글 개수 - 제목
	public int getSearchAdminboardCountTitle(String keyword) throws Exception;
	// 전체 게시판에서 검색한 게시글 개수 - 내용
	public int getSearchAdminboardCountContent(String keyword) throws Exception;
	// 전체 게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchAdminboardCountWriter(String keyword) throws Exception;
	// 전체 게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchAdminBoardAll(String keyword, int startNo, int numOfPage) throws Exception;
	// 전체 게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchAdminBoardTitle(String keyword, int startNo, int numOfPage) throws Exception;
	// 전체 게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchAdminBoardContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 전체 게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchAdminBoardWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 클래스게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchClassboardCountAll(String keyword) throws Exception;
	// 클래스게시판에서 검색한 게시글 개수 - 제목
	public int getSearchClassboardCountTitle(String keyword) throws Exception;
	// 클래스게시판에서 검색한 게시글 개수 - 내용
	public int getSearchClassboardCountContent(String keyword) throws Exception;
	// 클래스게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchClassboardCountWriter(String keyword) throws Exception;
	// 클래스게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchClassBoardAll(String keyword, int startNo, int numOfPage) throws Exception;
	// 클래스게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchClassBoardTitle(String keyword, int startNo, int numOfPage) throws Exception;
	// 클래스게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchClassBoardContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 클래스게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchClassBoardWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 자유게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchFreeboardCountAll(String keyword) throws Exception;
	// 자유게시판에서 검색한 게시글 개수 - 제목
	public int getSearchFreeboardCountTitle(String keyword) throws Exception;
	// 자유게시판에서 검색한 게시글 개수 - 내용
	public int getSearchFreeboardCountContent(String keyword) throws Exception;
	// 자유게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchFreeboardCountWriter(String keyword) throws Exception;
	// 자유게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchFreeBoardAll(String keyword, int startNo, int numOfPage) throws Exception;
	// 자유게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchFreeBoardTitle(String keyword, int startNo, int numOfPage) throws Exception;
	// 자유게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchFreeBoardContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 자유게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchFreeBoardWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 그룹게시판에서 검색한 게시글 개수 - 제목+내용
	public int getSearchGroupboardCountAll(String keyword) throws Exception;
	// 그룹게시판에서 검색한 게시글 개수 - 제목
	public int getSearchGroupboardCountTitle(String keyword) throws Exception;
	// 그룹게시판에서 검색한 게시글 개수 - 내용
	public int getSearchGroupboardCountContent(String keyword) throws Exception;
	// 그룹게시판에서 검색한 게시글 개수 - 작성자
	public int getSearchGroupboardCountWriter(String keyword) throws Exception;
	// 그룹게시판에서 검색 - 제목+내용
	public List<AdminBoardDTO> searchGroupBoardAll(String keyword, int startNo, int numOfPage) throws Exception;
	// 그룹게시판에서 검색 - 제목
	public List<AdminBoardDTO> searchGroupBoardTitle(String keyword, int startNo, int numOfPage) throws Exception;
	// 그룹게시판에서 검색 - 내용
	public List<AdminBoardDTO> searchGroupBoardContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 그룹게시판에서 검색 - 작성자
	public List<AdminBoardDTO> searchGroupBoardWriter(String keyword, int startNo, int numOfPage) throws Exception;
	
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
	
	// 전체 게시판에서 검색한 댓글 개수 - 내용
	public int getSearchAdminCommentCountContent(String keyword) throws Exception;
	// 전체 게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchAdminCommentCountWriter(String keyword) throws Exception;
	// 전체 게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchAdminCommentContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 전체 게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchAdminCommentWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 클래스게시판에서 검색한 댓글 개수 - 내용
	public int getSearchClassCommentCountContent(String keyword) throws Exception;
	// 클래스게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchClassCommentCountWriter(String keyword) throws Exception;
	// 클래스게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchClassCommentContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 클래스게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchClassCommentWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 자유게시판에서 검색한 댓글 개수 - 내용
	public int getSearchFreeCommentCountContent(String keyword) throws Exception;
	// 자유게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchFreeCommentCountWriter(String keyword) throws Exception;
	// 자유게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchFreeCommentContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 자유게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchFreeCommentWriter(String keyword, int startNo, int numOfPage) throws Exception;
	//-----------------------------------------------------------------------
	// 그룹게시판에서 검색한 댓글 개수 - 내용
	public int getSearchGroupCommentCountContent(String keyword) throws Exception;
	// 그룹게시판에서 검색한 댓글 개수 - 작성자
	public int getSearchGroupCommentCountWriter(String keyword) throws Exception;
	// 그룹게시판에서 댓글 검색 - 내용
	public List<AdminCommentDTO> searchGroupCommentContent(String keyword, int startNo, int numOfPage) throws Exception;
	// 그룹게시판에서 댓글 검색 - 작성자
	public List<AdminCommentDTO> searchGroupCommentWriter(String keyword, int startNo, int numOfPage) throws Exception;
	
	// 클래스게시판 댓글 삭제
	public int cbCommentDelete(int commentNo) throws Exception;
	// 자유게시판 댓글 삭제
	public int fbCommentDelete(int commentNo) throws Exception;
	// 그룹게시판 댓글 삭제
	public int gbCommentDelete(int commentNo) throws Exception;
	
}
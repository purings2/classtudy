package com.edu.admin.mapper;

import java.util.List;

import org.springframework.stereotype.*;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.domain.PagingDTO;
import com.edu.member.domain.MemberDTO;

@Repository("com.edu.admin.mapper.AdminBoardMapper")
public interface AdminBoardMapper {
	
	    //게시글 개수  
	    public int boardCount() throws Exception;
	    
	    //게시글 목록  
	    public List<AdminBoardDTO> boardList() throws Exception;
	    
	    //게시글 상세
	    public AdminBoardDTO boardDetail(int boardNo) throws Exception;
	    
	    //게시글 작성  
	    public int boardInsert(AdminBoardDTO board) throws Exception;
	    
	    //게시글 수정  
	    public int boardUpdate(AdminBoardDTO board) throws Exception;
	    
	    //게시글 삭제  
	    public int boardDelete(int boardNo) throws Exception;
	    
	    //회원 조회
	    public List<MemberDTO> memberList() throws Exception;
	    
	    //회원 삭제
	    public int memberDelete(String memberId) throws Exception;
	    
		// 게시물 총 갯수
		public int memberCount() throws Exception;

		// 페이징 처리 게시글 조회
		public List<MemberDTO> memberSelect(PagingDTO pagingDTO) throws Exception;
	}



	
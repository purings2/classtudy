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
	private static final Logger LOGGER
		= LoggerFactory.getLogger(AdminController.class);
	
	@Resource(name="com.edu.admin.mapper.AdminBoardMapper")
    AdminBoardMapper adBoardMapper;
    
    public List<AdminBoardDTO> boardListService() throws Exception{
        
        return adBoardMapper.boardList();
    }
    
    public AdminBoardDTO boardDetailService(int boardNo) throws Exception{
        
        return adBoardMapper.boardDetail(boardNo);
    }
    
    public int boardInsertService(AdminBoardDTO board) throws Exception{
        
        return adBoardMapper.boardInsert(board);
    }
    
    public int boardUpdateService(AdminBoardDTO board) throws Exception{
        
        return adBoardMapper.boardUpdate(board);
    }
    
    public int boardDeleteService(int boardNo) throws Exception{
        
        return adBoardMapper.boardDelete(boardNo);
    }
    
    public List<MemberDTO> memberListService() throws Exception{
        
        return adBoardMapper.memberList();
    }
    
    public int memberDeleteService(String memberId) throws Exception{
        
        return adBoardMapper.memberDelete(memberId);
    }
    
    public int countBoard() throws Exception {
    	return adBoardMapper.memberCount();
    }

    public List<MemberDTO> selectBoard(PagingDTO pagingDTO) throws Exception {
		LOGGER.info("adminBoardService /adbaord/selectBoard()....");

    	return adBoardMapper.memberSelect(pagingDTO);
    }
}



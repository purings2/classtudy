package com.edu.service;

import java.util.List;
import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.controller.GroupCommentController;
import com.edu.domain.GroupCommentDTO;
import com.edu.mapper.GroupCommentMapper;

@Service("com.edu.service.GroupCommentService")
public class GroupCommentService {
 
    @Resource(name="com.edu.mapper.GroupCommentMapper")
    GroupCommentMapper gbCommentMapper;
 
    	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(GroupCommentController.class);
	
    
    //댓글 목록
    public List<GroupCommentDTO> commentListService(int boardNo) throws Exception{
    	LOGGER.info("댓글목록 서비스 Start()....");
    	return gbCommentMapper.gbcommentList(boardNo);
    }
    //댓글 작성
    public int commentInsertService(GroupCommentDTO gbcomment) throws Exception{
    	LOGGER.info("댓글작성 서비스 Start()....");
    	return gbCommentMapper.gbcommentInsert(gbcomment);
    }
    
    //댓글 수정
    public int commentUpdateService(GroupCommentDTO content) throws Exception{
    	LOGGER.info("댓글수정 서비스 Start()....");
        return gbCommentMapper.gbcommentUpdate(content);
    }

    //댓글 삭제
    public int commentDeleteService(int commentNo) throws Exception{
    	LOGGER.info("댓글삭제 서비스 Start()....");
        return gbCommentMapper.gbcommentDelete(commentNo);
    }

}

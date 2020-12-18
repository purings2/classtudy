package com.edu.groupboard.service;

import java.util.List;
import javax.annotation.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.*;

import com.edu.groupboard.domain.GsCommentDTO;
import com.edu.groupboard.mapper.GsCommentMapper;

@Service("com.edu.groupboard.service.GsCommentService")
public class GsCommentService {
 
    @Resource(name="com.edu.groupboard.mapper.GsCommentMapper")
    GsCommentMapper gsCommentMapper;
 
    	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(GsCommentService.class);
	
    
    //댓글 목록
    public List<GsCommentDTO> commentListService(int boardNo) throws Exception{
    	LOGGER.info("댓글목록 서비스 Start()....");
    	return gsCommentMapper.gscommentList(boardNo);
    }
    //댓글 작성
    public int commentInsertService(GsCommentDTO gbcomment) throws Exception{
    	LOGGER.info("댓글작성 서비스 Start()....");
    	return gsCommentMapper.gscommentInsert(gbcomment);
    }
    
    //댓글 수정
    public int commentUpdateService(GsCommentDTO content) throws Exception{
    	LOGGER.info("댓글수정 서비스 Start()....");
        return gsCommentMapper.gscommentUpdate(content);
    }

    //댓글 삭제
    public int commentDeleteService(int commentNo) throws Exception{
    	LOGGER.info("댓글삭제 서비스 Start()....");
        return gsCommentMapper.gscommentDelete(commentNo);
    }

}

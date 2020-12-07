package com.edu.groupboard.controller;

import java.util.List;
import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.edu.groupboard.domain.GbCommentDTO;
import com.edu.groupboard.service.GbCommentService;

@Controller
@RequestMapping("/gbcomment")
public class GbCommentController {	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(GbCommentController.class);
	
    @Resource(name="com.edu.groupboard.service.GbCommentService")
    GbCommentService gbCommentService;
    
    //댓글 작성 
    @RequestMapping("/insert") 
    @ResponseBody
    private int gbCommentServiceInsert(GbCommentDTO gbcomment) throws Exception{
        
    	//LOGGER.info("댓글작성() Start......");
    	//LOGGER.info("이름 "+gbcomment.getWriter());
    	//LOGGER.info("게시판 번호 :"+gbcomment.getBoardNo() );
    	//LOGGER.info("댓글 내용 :"+gbcomment.getContent());
        return gbCommentService.commentInsertService(gbcomment);
    }
    
    //댓글 리스트
    @RequestMapping(value="/list/{boardNo}") 
    @ResponseBody
    private List<GbCommentDTO> commentList(@PathVariable int boardNo, Model model) throws Exception{        
    	LOGGER.info("댓글 리스트");
    	
    	return gbCommentService.commentListService(boardNo);
    }
    //댓글 수정
    @RequestMapping("/update/")   
    @ResponseBody
    private int gbCommentServiceUpdateProc(@RequestParam int commentNo, @RequestParam String content) throws Exception{
    	LOGGER.info("댓글 수정 Start()....");
    	GbCommentDTO gbcomment = new GbCommentDTO();
    	gbcomment.setCommentNo(commentNo);
    	gbcomment.setContent(content);
    	LOGGER.info("댓글 수정 commentNo : " + commentNo);
    	LOGGER.info("댓글 수정 content : " + content);
        
        return gbCommentService.commentUpdateService(gbcomment);
    }
       
    @RequestMapping("/delete/{commentNo}") //댓글 삭제  
    @ResponseBody
    private int gbCommentServiceDelete(@PathVariable int commentNo) throws Exception{
        
        return gbCommentService.commentDeleteService(commentNo);
    }
 
} // End - public class GroupCommentController
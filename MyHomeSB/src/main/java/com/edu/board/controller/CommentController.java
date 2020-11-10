package com.edu.board.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.board.domain.CommentDTO;
import com.edu.board.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Resource(name="com.edu.board.service.CommentService")
	CommentService mCommentService;
	
	//댓글 등록
	@RequestMapping("/insert")
	@ResponseBody
	private int mCommentServiceInsert(@RequestParam int bno, @RequestParam String content) throws Exception {
		System.out.println("mCommentServiceInsert.....");
		System.out.println("bno["+bno+"]");
		System.out.println("content["+content+"]");
		
		CommentDTO comment = new CommentDTO();
		comment.setBno(bno);
		comment.setContent(content);
		comment.setWriter("user");
		
		return mCommentService.commentInsertService(comment);
	}

	//댓글 리스트
    @RequestMapping("/list/{bno}") 
    @ResponseBody
    private List<CommentDTO> mCommentServiceList(@PathVariable int bno, Model model) throws Exception{
		System.out.println("mCommentServiceList.....");
       return mCommentService.commentListService(bno);
    }
	
	//댓글 삭제
	@RequestMapping("/delete/{cno}")
	@ResponseBody
	private int mCommentServiceDelete(@PathVariable int cno) throws Exception {
		System.out.println("mCommentServiceDelete.....");
		return mCommentService.commentDeleteService(cno);
	}
	
	//댓글 수정
	@RequestMapping("/update")
	@ResponseBody
	private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception {
		System.out.println("mCommentServiceUpdateProc.....");

		CommentDTO comment = new CommentDTO();
		comment.setCno(cno);
		comment.setContent(content);
		
		return mCommentService.commentUpdateService(comment);
	}
	
	
	
	
	
	
	
	
}






































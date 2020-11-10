package com.edu.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.edu.board.domain.CommentDTO;
import com.edu.board.mapper.CommentMapper;

@Service("com.edu.board.service.CommentService")
public class CommentService {
	
	@Resource(name="com.edu.board.mapper.CommentMapper")
	CommentMapper mCommentMapper;
	
	public List<CommentDTO> commentListService(int bno) throws Exception {
		return mCommentMapper.commentList(bno);
	}
	
	public int commentInsertService(CommentDTO comment) throws Exception {
		return mCommentMapper.commentInsert(comment);
	}
	
	public int commentUpdateService(CommentDTO comment) throws Exception {
		return mCommentMapper.commentUpdate(comment);
	}
	
	public int commentDeleteService(int cno) throws Exception {
		return mCommentMapper.commentDelete(cno);
	}
	

}


















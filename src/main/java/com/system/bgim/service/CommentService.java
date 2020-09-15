package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.CommentDTO;
import com.system.bgim.mapper.CommentMapper;

@Service("com.system.bgim.service.CommentService")
public class CommentService {
	
	@Resource(name="com.example.demo.board.mapper.CommentMapper")
    CommentMapper mCommentMapper;
	
	public List<CommentDTO> commentListService() throws Exception{
        return mCommentMapper.commentList();
    }
}

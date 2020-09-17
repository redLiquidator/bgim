package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.CommentDTO;
import com.system.bgim.mapper.CommentMapper;

@Service("com.system.bgim.service.CommentService")
public class CommentService {
	
	@Resource(name="com.system.bgim.mapper.CommentMapper")
    CommentMapper mCommentMapper;
	
	public List<CommentDTO> commentListService() throws Exception{
        return mCommentMapper.commentList();      
    }
	
	public int commentInsertService(CommentDTO comment) throws Exception{   
	    return mCommentMapper.commentInsert(comment);
	}
	 
	public int commentUpdateService(CommentDTO comment) throws Exception{       
	    return mCommentMapper.commentUpdate(comment);
	}
	
    public int commentDeleteService(int cno) throws Exception{       
	    return mCommentMapper.commentDelete(cno);
	    }

}

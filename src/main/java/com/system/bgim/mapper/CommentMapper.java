package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.CommentDTO;

@Repository("com.system.bgim.mapper.CommentMapper")
public interface CommentMapper {
	 public List<CommentDTO> commentList() throws Exception;
	 public int commentInsert(CommentDTO comment) throws Exception;
	 public int commentUpdate(CommentDTO comment) throws Exception;
	 public int commentDelete(int cno) throws Exception;
}

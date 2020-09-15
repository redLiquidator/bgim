package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.CommentDTO;
import com.system.bgim.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Resource(name="com.system.bgim.mapper.CommentMapper")
	  CommentService mCommentService;

	@RequestMapping("/list")
    @ResponseBody
    private List<CommentDTO> mCommentServiceList(Model model) throws Exception{    
        return mCommentService.commentListService();
    }
}

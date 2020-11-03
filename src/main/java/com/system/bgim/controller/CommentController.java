package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.CommentDTO;
import com.system.bgim.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	@Resource(name = "com.system.bgim.service.CommentService")
	CommentService mCommentService;

	@RequestMapping("/list")
	@ResponseBody
	private List<CommentDTO> mCommentServiceList(Model model) throws Exception {
		System.out.println("/comment/list -> comment.jsp function commentList()");
		return mCommentService.commentListService();
	}

	@RequestMapping("/insert") // 댓글 작성
	@ResponseBody
	private int mCommentServiceInsert(HttpServletRequest request) throws Exception {
		CommentDTO comment = new CommentDTO();
		comment.setBno(Integer.parseInt(request.getParameter("bno")));
		comment.setWriter(request.getParameter("writer"));
		comment.setContent(request.getParameter("content"));
		// 로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됨.따로 폼을 구현하지 않았기때문에 임시로
		// "test"라는 값을 입력함.
		comment.setWriter("test");
		return mCommentService.commentInsertService(comment);
	}

	@RequestMapping("/update") // 댓글 수정
	@ResponseBody
	private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception {
		CommentDTO comment = new CommentDTO();
		comment.setCno(cno);
		comment.setContent(content);

		return mCommentService.commentUpdateService(comment);
	}

	@RequestMapping("/delete/{cno}") // 댓글 삭제
	@ResponseBody
	private int mCommentServiceDelete(@PathVariable int cno) throws Exception {
		return mCommentService.commentDeleteService(cno);
	}
}

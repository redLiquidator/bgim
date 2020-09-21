package com.system.bgim.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.DeptService;
import com.system.bgim.service.DomainService;
import com.system.bgim.service.UserService;

@Controller
public class UserController {

	@Resource(name = "com.system.bgim.service.UserService")
	UserService userService;
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	@Resource(name="com.system.bgim.service.DeptService")
	DeptService deptService;

	@RequestMapping("/list")
	private String userList(Model model) throws Exception {
		System.out.println("/list");
		List<UserDTO> list = userService.userListService();
		model.addAttribute("list", list);
		return "list";
	}

	@RequestMapping("/detail/{code}")
	private String boardDetail(@PathVariable String code, Model model) throws Exception {
		model.addAttribute("detail", userService.userDetailService(code));
		return "detail";
	}

	@RequestMapping("/insert")
	private String userInsertForm(Model model) throws Exception {
		//select box list
		List<DomainDTO> domainlist = domainService.domainListService();
		 model.addAttribute("domainlist",domainlist);
		List<DeptDTO> deptlist = deptService.deptListService(); 
		 model.addAttribute("deptlist",deptlist);
		return "insert";
	}

	@RequestMapping("/insertProc")
	private String userInsertProc(HttpServletRequest request) throws Exception {

		UserDTO user = new UserDTO();

		user.setCode(request.getParameter("code"));
		user.setLogin_id(request.getParameter("login_id"));
		user.setUsername(request.getParameter("username"));
		user.setEmpid(request.getParameter("empid"));
		user.setCompanycode(request.getParameter("companycode"));
		user.setDeptcode(request.getParameter("deptcode"));
		
		System.out.println("insert user : " + user.getCode() + " " + user.getLogin_id() + " " + user.getUsername()+
				user.getEmpid()+  " " + user.getCompanycode() + " " + user.getDeptcode());

		userService.userInsertService(user);

		return "redirect:/list";

	}

	@RequestMapping("/update/{code}") // 게시글 수정폼 호출
	private String userUpdateForm(@PathVariable String code, Model model) throws Exception {
		model.addAttribute("detail", userService.userDetailService(code));
		return "update";
	}

	@RequestMapping("/updateProc")
	private String boardUpdateProc(HttpServletRequest request) throws Exception {

		UserDTO user = new UserDTO();
		user.setPwd(request.getParameter("pwd"));
		user.setDeptcode(request.getParameter("deptcode"));
		user.setCode(request.getParameter("code"));
		System.out.println("update user : " + user.getCode() + " " + user.getPwd() + " " + user.getDeptcode());

		userService.userUpdateService(user);

		return "redirect:/detail/" + request.getParameter("code");
	}

	@RequestMapping("/delete/{code}")
	private String userDelete(@PathVariable String code) throws Exception {
		userService.userDeleteService(code);
		return "redirect:/list";
	}
}

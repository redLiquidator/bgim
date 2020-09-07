package com.system.bgim.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.system.bgim.service.UserService;

	@Controller
	public class UserController {
	 
		@Resource(name="com.system.bgim.service.UserService")
	    UserService userService;
	    
		@RequestMapping("/list")
		private String boardList(Model model) throws Exception{
			 System.out.println("controller1");
			 model.addAttribute("list", userService.userListService());
			 System.out.println("controller2");
			 return "list";
		}

}

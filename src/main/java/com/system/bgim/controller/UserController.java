package com.system.bgim.controller;


import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.UserService;

	@Controller
	public class UserController {
	 
		@Resource(name="com.system.bgim.service.UserService")
	    UserService userService;

	    
		@RequestMapping("/list")
		private String userList(Model model) throws Exception{
			 System.out.println("controller1");
			 List<UserDTO> list = userService.userListService();
			 model.addAttribute("list", list);
			 return "list";
		}
		
		@RequestMapping("/detail/{code}") 
	    private String boardDetail(@PathVariable String code, Model model) throws Exception{
	        model.addAttribute("detail", userService.userDetailService(code));  
	        return "detail";
	    }
		
		@RequestMapping("/insert")
		private String userInsertForm(){
		    return "insert";
		}
		
		@RequestMapping("/insertProc")
		private String boardInsertProc(HttpServletRequest request) throws Exception{ 
			
			UserDTO user= new UserDTO();
			
			user.setCode(request.getParameter("code"));
			user.setLogin_id(request.getParameter("login_id"));
			user.setUsername(request.getParameter("username"));
			System.out.println("insert user : "+user.getCode()+" "+user.getLogin_id()+" "+user.getUsername());
			
			userService.userInsertService(user);
			
			return "redirect:/list";
			
		    }
				
		@RequestMapping("/update/{code}") //게시글 수정폼 호출  
	    private String boardUpdateForm(@PathVariable String code, Model model) throws Exception{   
	        model.addAttribute("detail", userService.userDetailService(code));	        
	        return "update";
	    }
		
		@RequestMapping("/updateProc")
	    private String boardUpdateProc(HttpServletRequest request) throws Exception{
			
			UserDTO user = new UserDTO(); 
			user.setPwd(request.getParameter("pwd"));
			user.setDeptcode(request.getParameter("deptcode"));
			user.setCode(request.getParameter("code"));
			System.out.println("update user : "+user.getCode()+" "+user.getPwd()+" "+user.getDeptcode());
			
			userService.userUpdateService(user);
			
			return "redirect:/detail/"+request.getParameter("code");
	    }
		
		 @RequestMapping("/delete/{code}")
		    private String boardDelete(@PathVariable String code) throws Exception{      
			 userService.userDeleteService(code);       
		        return "redirect:/list";
		}
}

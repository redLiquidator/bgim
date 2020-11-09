package com.system.bgim.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.CommentDTO;
import com.system.bgim.dto.MemberDTO;
import com.system.bgim.mapper.MemberMapper;
import com.system.bgim.service.CustomUserDetailsService;

@Controller
public class MemberController {
	 @Autowired
	  MemberMapper memberMapper;
	 
	 @RequestMapping("/openapi/readUser/{username}")
	    public @ResponseBody String  openApiReadUser(@PathVariable String username) {
	        MemberDTO member = memberMapper.readUser(username);
	        return member.getName();
	    }
	 
	 @RequestMapping("/openapi/readAuthority/{username}")
	    public @ResponseBody String  openApiReadAuthority(@PathVariable String username) {
	        List<String> auths = memberMapper.readAuthority(username);
	        
	        StringBuffer buf = new StringBuffer();
	        for(String auth : auths) {
	            buf.append(auth);
	            buf.append(" ");
	        }
	        return buf.toString();
	    }
	 
	 @RequestMapping("/loginUserName")
	 @ResponseBody
	 public String loginUserName(Principal principal) throws Exception {
 		 System.out.println(1);
		 System.out.println("name"+principal.getName());
		  return principal.getName().toString();
	 }
	 
	
}

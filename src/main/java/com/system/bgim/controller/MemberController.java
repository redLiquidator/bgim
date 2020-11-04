package com.system.bgim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MemberController {
	
	 private MemberService memberService;
	 

	    //메인 페이지
	    @GetMapping("/")
	    public String index() {
	        return "/front";
	    }
	    
	    //회원가입 페이지
	    @GetMapping("/account/signup")
	    public String dispSignup() {
	        return "/signup";
	    }
	    
	    //회원가입 처리
	    @PostMapping("/account/signup")
	    public String execSignup(MemberDto memberDto) {
	        memberService.joinUser(memberDto);

	        return "redirect:/account/login";
	    }

	    //로그인 페이지
	    @GetMapping("/account/login")
	    public String dispLogin() {
	        return "/login";
	    }
	    
	    //로그인 결과 페이지
	    @GetMapping("/account/login/result")
	    public String dispLoginResult() {
	        return "/loginSuccess";
	    }
	    
	    //로그아웃 결과 페이지
	    @GetMapping("/acccount/logout/result")
	    public String dispLogout() {
	        return "/logout";
	    }
	    
	    //접근 거부 페이지
	    @GetMapping("/acoount/denied")
	    public String dispDenied() {
	        return "/denied";
	    }
	    
	    //내 정보 페이지
	    @GetMapping("/account/info")
	    public String dispMyInfo() {
	        return "/myinfo";
	    }
	    
	    //어드민 페이지
	    @GetMapping("/admin")
	    public String dispAdmin() {
	        return "/admin";
	    }
   
}

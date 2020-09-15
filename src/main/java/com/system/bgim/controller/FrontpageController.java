package com.system.bgim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontpageController {
	
	@RequestMapping("/front")
	private String frontPage(Model model) throws Exception{
		 System.out.println("bgim front page");
		 return "front";
	}
}

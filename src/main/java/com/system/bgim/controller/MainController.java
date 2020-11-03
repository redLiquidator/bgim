package com.system.bgim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.system.bgim.dto.AuthuserDAO;
import com.system.bgim.dto.Authusers;

@RestController 
@RequestMapping(path = "/authuser")
public class MainController {
	
	@Autowired 
	private AuthuserDAO dao; 
	
	@GetMapping(path="/", produces="application/json") 
	public Authusers getAuthusers() { 
		return dao.getAllAuthusers();
	}


}

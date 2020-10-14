package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.HistoryService;
import com.system.bgim.service.UserService;

@Controller
public class HistoryController {
	
	@Resource(name = "com.system.bgim.service.HistoryService")
	HistoryService historyService;
	
	@RequestMapping("/provisionhistorylist")
	private String userList(Model model) throws Exception {
		System.out.println("/provisionhistorylist");
		List<UserDTO> userhistorylist = historyService.userHistoryListService();
		model.addAttribute("userhistorylist", userhistorylist);
		List<DomainDTO> domainhistorylist = historyService.domainHistoryListService();
		model.addAttribute("domainhistorylist", domainhistorylist);
		return "provisionhistorylist";
	}

}

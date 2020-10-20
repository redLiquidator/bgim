package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.service.HistoryService;

@Controller
public class HistoryController {
	
	@Resource(name = "com.system.bgim.service.HistoryService")
	HistoryService historyService;
	
	@RequestMapping("/provisionhistory")
	private String userList(Model model) throws Exception {
		System.out.println("/provisionhistory");

		HistoryDTO history = new HistoryDTO();
		history.setProvision_or_sync("provision");
		List<HistoryDTO> userhistorylist = historyService.userHistoryListService();

		model.addAttribute("userhistorylist", userhistorylist);
		return "provisionhistory";
	}

}

package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	private String provisionUserList(Model model) throws Exception {
		System.out.println("/provisionhistory");

		HistoryDTO history = new HistoryDTO();
		history.setHistorytablename("provision_history_user");
		List<HistoryDTO> userhistorylist = historyService.userHistoryListService(history);

		model.addAttribute("userhistorylist", userhistorylist);
		return "provisionhistory";
	}
	
	@RequestMapping("/synchistory")
	private String syncUserList(Model model) throws Exception{
		System.out.println("/synchistory");
		HistoryDTO history = new HistoryDTO();
		history.setHistorytablename("sync_history_user");
		List<HistoryDTO> userhistorylist = historyService.userHistoryListService(history);

		model.addAttribute("userhistorylist", userhistorylist);
		return "synchistory";
	
	}
	
	//인사동기화&프로비전 쿼리로그파일,전체로그파일 다운로드
	@RequestMapping("/sync_provision_log")
	private String syncProvisionLog(Model model) {
		return "sync_provision_log";
	}
}

package com.system.bgim.controller;

import java.io.File;
import java.util.Arrays;
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
	private String syncUserList(Model model) throws Exception {
		System.out.println("/synchistory");
		HistoryDTO history = new HistoryDTO();
		history.setHistorytablename("sync_history_user");
		List<HistoryDTO> userhistorylist = historyService.userHistoryListService(history);

		model.addAttribute("userhistorylist", userhistorylist);
		return "synchistory";

	}

	// 인사동기화&프로비전 쿼리로그파일 다운로드 메뉴
	@RequestMapping("/sync_provision_log")
	public String uploadFiles(Model model) {
		System.out.println("uploadFiles()");
		// bgim.logs디렉토리에서 파일명이 file_sync_provision으로 시작하는 파일명만 logfiles.jsp화면으로 불러온다.

		
		  List<File> dirAllList = getAllDirFileList("D:/git_src/bgim/logs/");
		  List<File> dirList = null; 
		  for(int i=0;i<dirAllList.size();++i) {
		  if(dirAllList.get(i).toString().contains("logback_sync_provision")) {
		  dirList.add(dirAllList.get(i)); } } 
		  System.out.println(dirList);
		  model.addAttribute("dirList", dirList);
		 
		return "sync_provision_log";
	}

	public static List<File> getAllDirFileList(String dirPath) {
		// 디렉토리 파일 리스트
		List<File> dirFileList = null;
		File dir = new File(dirPath);

		if (dir.exists()) {
			// 파일 목록을 구함
			File[] files = dir.listFiles();
			// 파일 배열을 파일 리스트로 변화함
			dirFileList = Arrays.asList(files);
		}
		return dirFileList;
	}
}

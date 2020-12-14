package com.system.bgim.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.PageMakerDTO;
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

	@RequestMapping("/synchistory/{presentPage}")
	private String syncUserList(@PathVariable int presentPage,Model model) throws Exception {
		System.out.println("/synchistory");
		HistoryDTO history = new HistoryDTO();
		history.setHistorytablename("sync_history_user");
		
		int totalNumber = historyService.countHistoryService(history);	 
		System.out.println("totalHistory | "+totalNumber);
		
		PageMaker DoPageMaker= new PageMaker();
		DoPageMaker.calcData(totalNumber,presentPage);
		System.out.println(DoPageMaker.calcData(totalNumber,presentPage));
		  
		PageMakerDTO pageMaker = new PageMakerDTO();
		  
		pageMaker.setStartData((int)
		DoPageMaker.calcData(totalNumber,presentPage).get(0));
		pageMaker.setEndData((int)
		DoPageMaker.calcData(totalNumber,presentPage).get(1));
		pageMaker.setStartPage((int)
		DoPageMaker.calcData(totalNumber,presentPage).get(2));
		pageMaker.setEndPage((int)
		DoPageMaker.calcData(totalNumber,presentPage).get(3));
		pageMaker.setNext((boolean)
		DoPageMaker.calcData(totalNumber,presentPage).get(4));
		pageMaker.setPrev((boolean)
		DoPageMaker.calcData(totalNumber,presentPage).get(5));
		pageMaker.setPresentPage(presentPage);
		  
		  
		  //페이징처리시 계산한 startData와 endData값을 가져와서 리스트를 불러온다.
		  System.out.println("/historylist"); 
		  List<HistoryDTO> userhistorylist = historyService.historyListService_pagination(pageMaker);
		  model.addAttribute("userhistorylist",userhistorylist);
		  model.addAttribute("pageMaker",pageMaker); 
		  return "synchistory";
	}

	// 인사동기화&프로비전 쿼리로그파일 다운로드 메뉴
	@RequestMapping("/sync_provision_log")
	public String uploadFiles(Model model) throws Exception {
		// bgim.logs디렉토리에서 파일명이 file_sync_provision으로 시작하는 파일명만 logfiles.jsp화면으로 불러온다.
		//파일정보를 읽어서 db 에 insert
		System.out.println("/sync_provision_log");
		model.addAttribute("dirList", historyService.uploadFilesService());

		return "sync_provision_log";
	}
	
	 @RequestMapping("/logFileDown/{file_name}")
	 private void fileDown(@PathVariable String file_name, HttpServletRequest request, HttpServletResponse response) throws Exception{
			System.out.println("------------------"+file_name);
			 request.setCharacterEncoding("UTF-8");
			 
			//파일 업로드된 경로 
		        try{
		        	 String fileUrl = "D:/git_src/bgim/logs/";
		        	 fileUrl += "/";
		        	 String savePath = fileUrl;
		        	 String fileName = file_name;
		        	 
		        	//실제 내보낼 파일명
		        	 String oriFileName = file_name;
		        	 InputStream in = null;
		             OutputStream os = null;
		             File file = null;
		             boolean skip = false;
		             String client = "";

		           //파일을 읽어 스트림에 담기  
		             try{
		            	 file = new File(savePath, fileName);
		            	 in = new FileInputStream(file);
		             } catch (FileNotFoundException fe) {
		                 skip = true;
		             }

		             client = request.getHeader("User-Agent");
		             
		             //파일 다운로드 헤더 지정 
		             response.reset();
		             response.setContentType("application/octet-stream");
		             response.setHeader("Content-Description", "JSP Generated Data");

		             if (!skip) {
		            	// IE
		            	 if (client.indexOf("MSIE") != -1) {
		            		 response.setHeader("Content-Disposition", "attachment; filename=\""
		            				 + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
		            		// IE 11 이상
		            	 } else if (client.indexOf("Trident") != -1) {
		            		 response.setHeader("Content-Disposition", "attachment; filename=\""
		            				 + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
		            	 } else {
		                     // 한글 파일명 처리
		                     response.setHeader("Content-Disposition",
		                             "attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
		                     response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
		                 }
		            	 response.setHeader("Content-Length", "" + file.length());
		            	 os = response.getOutputStream();
		            	 byte b[] = new byte[(int) file.length()];
		                 int leng = 0;
		                 while ((leng = in.read(b)) > 0) {
		                     os.write(b, 0, leng);
		                 }
		             } else {
		            	 response.setContentType("text/html;charset=UTF-8");
		                 System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
		             }
		             in.close();
		             os.close();
		         } catch (Exception e) {
		             System.out.println("ERROR : " + e.getMessage());
		         }
		 
	         }
	
	@RequestMapping("/treeview")
	public String treeview() throws Exception {	 
		return "treeview";
	}


	
}

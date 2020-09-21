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

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.system.bgim.dto.DashboardDTO;
import com.system.bgim.dto.FileDTO;
import com.system.bgim.service.DashboardService;

@Controller
public class DashboardController {
	
	@Resource(name="com.system.bgim.service.DashboardService")
    DashboardService dashboardService;
	
	@RequestMapping("/dashboard")
	private String dashboard(Model model) throws Exception{
		 System.out.println("dashboard");
		 return "dashboard";	 
	}
    
	@RequestMapping("/dashboardlist")
	private String dashboardList(Model model) throws Exception{
		 System.out.println("/dashboardlist");
		 List<DashboardDTO> dashboardlist = dashboardService.dashboardListService();
		 System.out.println(dashboardlist);
		 model.addAttribute("dashboardlist", dashboardlist);
		 return "dashboardlist";
	}
	
	@RequestMapping("/dashboarddetail/{bno}") 
	private String dashboardDetail(@PathVariable int bno, Model model) throws Exception{       
	     model.addAttribute("detail", dashboardService.dashboardDetailService(bno));
	     model.addAttribute("files", dashboardService.fileDetailService(bno)); //첨부파일명
	     System.out.println(dashboardService.dashboardDetailService(bno));
	     return "dashboarddetail";
	}
	
	@RequestMapping("/dashboardinsert")
	private String dashboardInsertForm(){        
	     return "dashboardinsert";
	}
		 
	@RequestMapping("/dashboardinsertProc")
	private String dashboardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception{   	 

		 DashboardDTO board = new DashboardDTO();		 //게시판글 업로드 
		 FileDTO file = new FileDTO();		             //파일업로드
		 
		 board.setSubject(request.getParameter("subject"));
	     board.setContent(request.getParameter("content"));
	     board.setWriter(request.getParameter("writer"));
	     
	     
	     if(files.isEmpty()){ //업로드할 파일이 없을 시
	    	 	dashboardService.dashboardInsertService(board); //게시글 insert
	     }else{
	     //첨부파일 업로드
	    	    String fileName = files.getOriginalFilename(); 
	            String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase(); 
	            File destinationFile; 
	            String destinationFileName; 
	            String fileUrl =  "D:/git_src/bgim/src/main/webapp/WEB-INF/uploadFiles/";
	            
	            do { 
	                destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension; 
	                destinationFile = new File(fileUrl+ destinationFileName); 
	            } while (destinationFile.exists());   
	     
	            
	            destinationFile.getParentFile().mkdirs(); 
			    System.out.println("mkdir() completed");
			    //요청 시점의 임시 파일을 로컬 파일 시스템에 영구적으로 복사 .한번만 실행되며 두번째 실행부터는 성공을 보장할 수 없음
			    files.transferTo(destinationFile); 
			    System.out.println("transfetTo() completed");
		
			    dashboardService.dashboardInsertService(board); //게시글 insert
			     
			    file.setBno(board.getBno());
			    file.setFileName(destinationFileName);
		        file.setFileOriName(fileName);
		        file.setFileUrl(fileUrl);
		        System.out.println(file.getBno()+"/"+file.getFileName()+" "+file.getFileOriName()+" "+file.getFileUrl());

		        dashboardService.fileInsertService(file); //file insert
	     }
	     return "redirect:/dashboardlist";
	}
	
	 @RequestMapping("/dashboardupdate/{bno}")
	 private String dashboardUpdateForm(@PathVariable int bno, Model model) throws Exception{    
	    model.addAttribute("detail", dashboardService.dashboardDetailService(bno));  
	    System.out.println(dashboardService.dashboardDetailService(bno));
	    return "dashboardupdate";
	 }
	 
	 @RequestMapping("/dashboardupdateProc")
	 private String dashboardUpdateProc(HttpServletRequest request) throws Exception{   
		System.out.println(request.getParameter("subject")+request.getParameter("content")+request.getParameter("bno"));
		DashboardDTO board = new DashboardDTO();
	    board.setSubject(request.getParameter("subject"));
	    board.setContent(request.getParameter("content"));
	    board.setBno(Integer.parseInt(request.getParameter("bno")));       
	    dashboardService.dashboardUpdateService(board);     
	    return "redirect:/dashboarddetail/"+request.getParameter("bno"); 
	 }
	 
	 @RequestMapping("/dashboarddelete/{bno}")
	 private String boardDelete(@PathVariable int bno) throws Exception{  
		System.out.println("/dashboarddelete");
	    dashboardService.dashboardDeleteService(bno);       
	    return "redirect:/dashboardlist";
	}
	 
	 @RequestMapping("/fileDown/{bno}")
	 private void fileDown(@PathVariable int bno, HttpServletRequest request, HttpServletResponse response) throws Exception{
		 
		 request.setCharacterEncoding("UTF-8");
		 FileDTO fileDTO = dashboardService.fileDetailService(bno);
		 
		//파일 업로드된 경로 
	        try{
	        	 String fileUrl = fileDTO.getFileUrl();
	        	 fileUrl += "/";
	        	 String savePath = fileUrl;
	        	 String fileName = fileDTO.getFileName();
	        	 
	        	//실제 내보낼 파일명
	        	 String oriFileName = fileDTO.getFileOriName();
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
}

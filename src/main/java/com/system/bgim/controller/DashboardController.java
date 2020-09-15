package com.system.bgim.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DashboardDTO;
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
	     System.out.println(dashboardService.dashboardDetailService(bno));
	     return "dashboarddetail";
	}
	
	@RequestMapping("/dashboardinsert")
	private String dashboardInsertForm(){        
	     return "dashboardinsert";
	}
		 
	@RequestMapping("/dashboardinsertProc")
	private String dashboardInsertProc(HttpServletRequest request) throws Exception{   	 
		 DashboardDTO board = new DashboardDTO();
		 board.setSubject(request.getParameter("subject"));
	     board.setContent(request.getParameter("content"));
	     board.setWriter(request.getParameter("writer"));
	     dashboardService.dashboardInsertService(board);
	     return 	"redirect:/dashboardlist";
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
}

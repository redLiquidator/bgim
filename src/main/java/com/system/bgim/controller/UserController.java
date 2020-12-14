package com.system.bgim.controller;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.DeptService;
import com.system.bgim.service.DomainService;
import com.system.bgim.service.HistoryService;
import com.system.bgim.service.UserService;

@Controller
public class UserController {

	@Resource(name = "com.system.bgim.service.UserService")
	UserService userService;
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	@Resource(name="com.system.bgim.service.DeptService")
	DeptService deptService;
	@Resource(name="com.system.bgim.service.HistoryService")
	HistoryService historyService;

	
	@RequestMapping("/list/{presentPage}")
	private String userList(@PathVariable int presentPage,Model model) throws Exception {	
				  
		  UserDTO user = new UserDTO();
		  user.setTablename("org_user");
		  int totalNumber = userService.countUserService(user);	  

		  PageMaker DoPageMaker= new PageMaker();
		  DoPageMaker.calcData(totalNumber,presentPage);  
		  System.out.println(DoPageMaker.calcData(totalNumber,presentPage));
		  
		  PageMakerDTO pageMaker = new PageMakerDTO();
		  
		  pageMaker.setStartData((int) DoPageMaker.calcData(totalNumber,presentPage).get(0));
		  pageMaker.setEndData((int) DoPageMaker.calcData(totalNumber,presentPage).get(1));
		  pageMaker.setStartPage((int) DoPageMaker.calcData(totalNumber,presentPage).get(2));
		  pageMaker.setEndPage((int) DoPageMaker.calcData(totalNumber,presentPage).get(3));
		  pageMaker.setNext((boolean) DoPageMaker.calcData(totalNumber,presentPage).get(4));
		  pageMaker.setPrev((boolean) DoPageMaker.calcData(totalNumber,presentPage).get(5));
		  pageMaker.setPresentPage(presentPage);
		  
		  //페이징처리시 계산한 startData와 endData값을 가져와서 리스트를 불러온다.
		  System.out.println("/list"); 
		  List<UserDTO> list = userService.userListService(pageMaker); 
		  model.addAttribute("list", list);
		  model.addAttribute("pageMaker",pageMaker);
		 	 	  
		  return "list";		
	}
	

	@RequestMapping("/detail/{code}")
	private String boardDetail(@PathVariable String code, Model model) throws Exception {
		model.addAttribute("detail", userService.userDetailService(code));
		return "detail";
	}
	
	//해당코드의 사용자 수를 리턴. 0 or 1 을 리턴한다.
	@RequestMapping("/count")
	@ResponseBody
	private int countUser(HttpServletRequest request,Model model) throws Exception {
		UserDTO user = new UserDTO();
		user.setCode(request.getParameter("code"));
		user.setTablename(request.getParameter("tablename"));	
		System.out.println(user.getCode()+" "+user.getTablename());
		System.out.println(userService.countUserService(user));
		return  userService.countUserService(user);
	}

	@RequestMapping("/insert")
	private String userInsertForm(Model model) throws Exception {
		//select box list
		 DomainDTO domain = new DomainDTO();
		 domain.setTablename("org_user");
		 List<DomainDTO> domainlist = domainService.domainListService(domain);			 
		 model.addAttribute("domainlist",domainlist);
		 DeptDTO dept = new DeptDTO();
		 List<DeptDTO> deptlist = deptService.deptListService(dept); 
		 model.addAttribute("deptlist",deptlist);		 
		 return "insert";
	}

	@RequestMapping("/insertProc")
	private String userInsertProc(HttpServletRequest request) throws Exception {
		//input과 같은 단일값은 getParameter로 받고, selectbox와 같은 복수값은 getParameterValues로 받아야 한다. 
		System.out.println(request.getParameterValues("companycode")+ " " + request.getParameterValues("deptcode"));
		UserDTO user = new UserDTO();
		user.setCode(request.getParameter("code"));
		user.setLogin_id(request.getParameter("login_id"));
		user.setPwd(request.getParameter("pwd"));
		user.setUsername(request.getParameter("username"));
		user.setEmpid(request.getParameter("empid"));
		user.setCompanycode(request.getParameter("companycode"));
		user.setDeptcode(request.getParameter("deptcode"));
		user.setTablename(request.getParameter("tablename"));
		
		System.out.println("insert user : " + user.getCode() + " " +  user.getUsername() + " " + user.getPwd() + " " + user.getLogin_id()+
				user.getEmpid()+  " " + user.getCompanycode() + " " + user.getDeptcode()+" " + user.getTablename());

		userService.userInsertService(user);
		
		//프로비전 & sync 로그 생성
		HistoryDTO history = new HistoryDTO();
		history.setProvision_or_sync(request.getParameter("provision_or_sync"));
		history.setStatus("success");
		history.setResource_name("mall");
		Date time = new Date();
		history.setExecuted_time(time);
		history.setUser_id(request.getParameter("code"));
		
		String content = "";
		content = request.getParameter("provision_or_sync")+ " : "+history.getUser_id()+"사용자 작업(userInsertProc)을 성공했습니다.";
		history.setContent(content);
		
		historyService.userHistoryInsertService(history);

		return "redirect:/list";

	}

	@RequestMapping("/update/{code}") // 게시글 수정폼 호출
	private String userUpdateForm(@PathVariable String code, Model model) throws Exception {
		model.addAttribute("detail", userService.userDetailService(code));
		return "update";
	}

	@RequestMapping("/updateProc")
	private String userUpdateProc(HttpServletRequest request) throws Exception {

		UserDTO user = new UserDTO();
		user.setCode(request.getParameter("code"));
		user.setLogin_id(request.getParameter("login_id"));
		user.setPwd(request.getParameter("pwd"));
		user.setUsername(request.getParameter("username"));
		user.setEmpid(request.getParameter("empid"));
		user.setCompanycode(request.getParameter("companycode"));
		user.setDeptcode(request.getParameter("deptcode"));
		user.setTablename(request.getParameter("tablename"));

		System.out.println("update user : " + user.getCode() + " " +  user.getPwd() + " " + user.getLogin_id() + " " + user.getUsername()+
				user.getEmpid()+  " " + user.getCompanycode() + " " + user.getDeptcode()+" " + user.getTablename());

		userService.userUpdateService(user);
		
		//프로비전 & sync 로그 생성
		HistoryDTO history = new HistoryDTO();
		history.setProvision_or_sync(request.getParameter("provision_or_sync"));
		history.setHistorytablename(request.getParameter("historytablename"));
		System.out.println("historytablename:"+history.getHistorytablename());
		history.setStatus("success");
		history.setResource_name("mall");
		Date time = new Date();
		history.setExecuted_time(time);
		history.setUser_id(request.getParameter("code"));
		
		String content = "";
		content = request.getParameter("provision_or_sync")+ " : "+history.getUser_id()+"사용자 작업(userUpdateProc)을 성공했습니다.";
		history.setContent(content);
		
		historyService.userHistoryInsertService(history);

		return "redirect:/detail/" + request.getParameter("code");
	}

	@RequestMapping("/delete/{code}")
	private String userDelete(@PathVariable String code) throws Exception {
		userService.userDeleteService(code);
		return "redirect:/list";
	}
	
	
	@RequestMapping("/pwdReset")
	@ResponseBody
	private int pwdReset(HttpServletRequest request) throws Exception {
		UserDTO user = new UserDTO();
		user.setCode(request.getParameter("code"));
		
		return userService.pwdResetService(user); 
	}
}

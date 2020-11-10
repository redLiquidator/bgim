package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.DeptService;

@Controller
public class DeptController {
	
	@Resource(name="com.system.bgim.service.DeptService")
    DeptService deptService;
	
	
	@RequestMapping(path="/deptlist",method=RequestMethod.GET)
	private String deptList(Model model) throws Exception {
		DeptDTO dept = new DeptDTO();
		dept.setTablename("org_dept");
		System.out.println("/deptlist");
		List<DeptDTO> deptlist = deptService.deptListService(dept);
		model.addAttribute("deptlist", deptlist);
		return "deptlist";
	}
	
	
	@RequestMapping("/deptdetail")
    @ResponseBody 
	private List<DeptDTO> deptDetail(@RequestParam String companycode,Model model) throws Exception{
	 	 System.out.println(companycode);
	 	 deptService.deptDetailService(companycode);
		 return deptService.deptDetailService(companycode);  //@ResponseBody 가 있어야 jsp 로 넘어간다. 
	}
}

package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.DomainService;
import com.system.bgim.service.UserService;

@Controller
public class PresyncDataController {
	
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	@Resource(name = "com.system.bgim.service.UserService")
	UserService userService;
	
	@RequestMapping("/presyncdomainlist")
	private String domainList(Model model) throws Exception{
		//domain list를 불러온다
		 System.out.println("/presyncdomainlist");
		 DomainDTO domain = new DomainDTO();
		 domain.setTablename("presync_domain");
		 List<DomainDTO> domainlist = domainService.domainListService(domain);
		 System.out.println(domainService.domainListService(domain));
		 model.addAttribute("domainlist",domainlist);
		 
		 return "presyncdomainlist";
	}
	
	
	@RequestMapping("/presyncuserlist/{companycode}")
	@ResponseBody
	private List<UserDTO> userListbyDomain(@RequestParam String companycode) throws Exception{
		UserDTO user = new UserDTO();
		user.setCompanycode(companycode);
		user.setTablename("presync_user");
		return userService.userListbyDomainService(user);
	}
}

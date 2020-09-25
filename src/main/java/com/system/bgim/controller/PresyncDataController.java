package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.DomainService;

@Controller
public class PresyncDataController {
	
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	
	@RequestMapping("/presyncdomainlist")
	private String domainList(Model model) throws Exception{
		 System.out.println("/presyncdomainlist");
		 DomainDTO domain = new DomainDTO();
		 domain.setTablename("presync_domain");
		 List<DomainDTO> domainlist = domainService.domainListService(domain);
		 model.addAttribute("domainlist",domainlist);
		 System.out.println(domainlist);
		 return "presyncdomainlist";
	}


}

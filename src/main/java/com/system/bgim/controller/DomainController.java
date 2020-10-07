package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.service.DomainService;

@Controller
public class DomainController {
	
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	
	@RequestMapping("/domainlist")
	private String domainList(Model model,HttpServletRequest request) throws Exception{
		 System.out.println("/domainlist");
		 DomainDTO domain = new DomainDTO();
		 domain.setTablename("org_domain");		 
		 List<DomainDTO> domainlist = domainService.domainListService(domain);
		 model.addAttribute("domainlist",domainlist);
		 System.out.println(domainlist.size());
		 return "domainlist";
	}

}

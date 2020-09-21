package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

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
	private String domainList(Model model) throws Exception{
		 System.out.println("/domainlist");
		 List<DomainDTO> domainlist = domainService.domainListService();
		 model.addAttribute("domainlist",domainlist);
		 return "domainlist";
	}

}

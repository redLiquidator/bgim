package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.service.DomainService;

@Controller
public class DomainController {
	
	@Resource(name="com.system.bgim.service.DomainService")
	DomainService domainService;
	
	@RequestMapping("/domainlist/{presentPage}")
	private String domainList(@PathVariable int presentPage,Model model,HttpServletRequest request) throws Exception{
		 System.out.println("/domainlist");
		 DomainDTO domain = new DomainDTO();
		 domain.setTablename("org_domain");		 
		 int totalNumber = domainService.countDomainService(domain);	 
		 System.out.println("totalUser | "+totalNumber);
		 	
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
		  System.out.println("/domainlist"); 
		  List<DomainDTO> domainlist = domainService.domainListService(pageMaker); 
		  model.addAttribute("domainlist", domainlist);
		  model.addAttribute("pageMaker",pageMaker);
		 return "domainlist";
	}

}

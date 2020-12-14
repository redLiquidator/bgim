package com.system.bgim.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.service.DeptService;

@Controller
public class DeptController {
	
	@Resource(name="com.system.bgim.service.DeptService")
    DeptService deptService;
	
	
	@RequestMapping(path="/deptlist/{presentPage}",method=RequestMethod.GET)
	private String deptList(@PathVariable int presentPage,Model model) throws Exception {
		DeptDTO dept = new DeptDTO();
		dept.setTablename("org_dept");
		int totalNumber = deptService.countDeptService(dept);	 
		System.out.println("totalDept | "+totalNumber);
		 
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
		 System.out.println("/deptlist"); 
		 List<DeptDTO> deptlist = deptService.deptListService_pagination(pageMaker); 
		 model.addAttribute("deptlist", deptlist);
		 model.addAttribute("pageMaker",pageMaker);
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

package com.system.bgim.controller;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.service.UserService;

public class PageMaker {
	
	@Resource(name = "com.system.bgim.service.UserService")
	UserService userService;
	
	private int presentPage;
	private int totalCount;
	private int displayPagenum = 5; 
	private int perPagenum = 10;
	private int endPage;
	private int startPage;
	private boolean prev;
	private boolean next;
	
	
	public List<Object> calcData(int totalNumber,int presentpage) throws Exception {
		this.totalCount = totalNumber;
		this.presentPage = presentpage;
	
		endPage = (int)(Math.ceil(presentPage/(double)displayPagenum)*displayPagenum);
		
		
		startPage = (endPage-displayPagenum) +1;	
		prev = startPage == 1 ? false : true; 
		
		//데이터없는 빈껍데기 페이지제거
		for(int i=endPage;i>= Math.ceil(totalCount/(double)perPagenum);i--) {

			System.out.println("i |"+i);
			endPage = i;
		}
		
		System.out.println(endPage+"|"+startPage+"|"+prev);
		
		next = endPage * perPagenum >= totalCount ? false : true;
		System.out.println("next "+ next);
		 
		//org_user select시 rnum between에 넣을 parameter  
		PageMakerDTO pageMaker = new PageMakerDTO();
		
		pageMaker.setStartData((presentPage == 1)? 1: (presentPage-1)*perPagenum+1);
		pageMaker.setEndData(pageMaker.getStartData()+9);
		  	  
		System.out.println("StartData EndData next prev|"+pageMaker.getStartData()+"|"+pageMaker.getEndData()+next+prev);
		
		List<Object> results = Arrays.asList(pageMaker.getStartData(),pageMaker.getEndData(),startPage,endPage,next,prev);
		
		return results;
	}
}

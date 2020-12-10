package com.system.bgim.controller;

import javax.annotation.Resource;

import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.service.UserService;

public class PageMaker {
	
	@Resource(name = "com.system.bgim.service.UserService")
	UserService userService;
	
	private int presentPage=1;
	private int totalCount;
	private int displayPagenum = 5; 
	private int perPagenum = 10;
	private int endPage;
	private int startPage;
	private boolean prev;
	private int totalEndPage;
	private boolean next;
	
	
	public void calcData() throws Exception {
		endPage = (int)(Math.ceil(presentPage/(double)displayPagenum)*displayPagenum);
		startPage = (endPage-displayPagenum) +1;
		prev = startPage == 1 ? false : true; 
		System.out.println(endPage+"|"+startPage+"|"+prev);
		
		/*
		 * UserDTO user = new UserDTO(); PageMakerDTO pageMaker = new PageMakerDTO();
		 * pageMaker.setTotalCount(userService.countUserService(user));
		 * System.out.println(pageMaker.getTotalCount()); next = endPage * perPagenum >=
		 * totalCount ? false : true; System.out.println("totalCount "+totalCount);
		 * 
		 * 
		 * pageMaker.setStartData((startPage-1)*displayPagenum+1);
		 * pageMaker.setEndData(endPage*displayPagenum);
		 * 
		 * 
		 * System.out.println("Paging result |"+endPage+"|"+startPage+"|"+prev+"|"+next)
		 * ; System.out.println("StartData EndData |"+pageMaker.getStartData()+"|"+
		 * pageMaker.getEndData());
		 */
	}
	
	

}

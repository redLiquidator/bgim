package com.system.bgim.controller;

public class PageMaker {
	
	private int totalCount;
	private int displayPagenum = 5; 
	private int perPagenum = 10;
	int endPage;
	int startPage = 1;
	boolean prev;
	int totalEndPage;
	boolean next;

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	private void calcData() {
		endPage = (int)(Math.ceil(3/(double)displayPagenum)*displayPagenum);
		startPage = (endPage-displayPagenum) +1;
		prev = startPage == 1 ? false : true; 
		next = endPage * perPagenum >= totalCount ? false : true;
		System.out.println("Paging result |"+endPage+"|"+startPage+"|"+prev+"|"+next);
	}
	
	

}

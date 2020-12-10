package com.system.bgim.dto;

public class PageMakerDTO { 
	private int startPage;
	private int endPage;
	private int startData;
	private int endData;
	
	private int totalCount;
	
	public int getStartData() {
		return startData;
	}
	public void setStartData(int startData) {
		this.startData = startData;
	}
	public int getEndData() {
		return endData;
	}
	public void setEndData(int endData) {
		this.endData = endData;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
		
}

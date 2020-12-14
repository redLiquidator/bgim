package com.system.bgim.dto;

public class PageMakerDTO { 
	private int startPage;
	private int endPage;
	private int startData;
	private int endData;
	private boolean prev;
	private boolean next;
	private int totalCount;
	private int presentPage;
	
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
	
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
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public int getPresentPage() {
		return presentPage;
	}
	public void setPresentPage(int presentPage) {
		this.presentPage = presentPage;
	}
		
}

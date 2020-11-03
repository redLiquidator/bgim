package com.system.bgim.dto;

import java.util.ArrayList;
import java.util.List;

public class Authusers {
	private List<Authuser> authuserList; 
	
	public List<Authuser> getAuthuserList() { 
		if (authuserList == null) { 
			authuserList = new ArrayList<>(); 
		} 
		return authuserList; 
	} 
	
	public void setAuthuserList(List<Authuser> authuserList) {
		this.authuserList = authuserList; 
	}
}

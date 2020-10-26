package com.system.bgim.dto;

import java.io.File;
import java.util.Date;

public class LogFilesDTO {
	
	private int file_id;
	private String menu;
	private String file_name;
	private String file_path;
	private Date executed_time;
	
	public int getFile_id() {
		return file_id;
	}
	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String string) {
		this.file_path = string;
	}
	public Date getExecuted_time() {
		return executed_time;
	}
	public void setExecuted_time(Date executed_time) {
		this.executed_time = executed_time;
	}
	
	

}

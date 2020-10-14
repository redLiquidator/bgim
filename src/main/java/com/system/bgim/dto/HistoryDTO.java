package com.system.bgim.dto;

import java.util.Date;

public class HistoryDTO {
	private String status;
	private String resource_name;
	private String content;
	private Date executed_time;
	private String user_id;
	private String domain_id;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getResource_name() {
		return resource_name;
	}
	public void setResource_name(String resource_name) {
		this.resource_name = resource_name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getExecuted_time() {
		return executed_time;
	}
	public void setExecuted_time(Date presentTime) {
		this.executed_time = presentTime;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDomain_id() {
		return domain_id;
	}
	public void setDomain_id(String domain_id) {
		this.domain_id = domain_id;
	}
}

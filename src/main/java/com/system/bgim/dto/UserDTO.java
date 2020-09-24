package com.system.bgim.dto;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class UserDTO {
	private int user_id;
	private int domain_id;
	private int dept_id;
	private int hr_group_id;
	private int hr_sync;
	private int hr_sync_group;
	private String status;
	private String is_valid;
	private Date create_dt;
	private Date modify_dt;
	private Date pwd_dt;
	private String username;
	private String companycode;
	private String empid;
	private String deptcode;
	private String code;
	private String login_id;
	private String pwd;
	private String email;
	private String mobile;
	private Date hired_dt;
	private String tablename;
	
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getDomain_id() {
		return domain_id;
	}
	public void setDomain_id(int domain_id) {
		this.domain_id = domain_id;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getHr_group_id() {
		return hr_group_id;
	}
	public void setHr_group_id(int hr_group_id) {
		this.hr_group_id = hr_group_id;
	}
	public int getHr_sync() {
		return hr_sync;
	}
	public void setHr_sync(int hr_sync) {
		this.hr_sync = hr_sync;
	}
	public int getHr_sync_group() {
		return hr_sync_group;
	}
	public void setHr_sync_group(int hr_sync_group) {
		this.hr_sync_group = hr_sync_group;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getIs_valid() {
		return is_valid;
	}
	public void setIs_valid(String is_valid) {
		this.is_valid = is_valid;
	}
	public Date getCreate_dt() {
		return create_dt;
	}
	public void setCreate_dt(Date create_dt) {
		this.create_dt = create_dt;
	}
	public Date getModify_dt() {
		return modify_dt;
	}
	public void setModify_dt(Date modify_dt) {
		this.modify_dt = modify_dt;
	}
	public Date getPwd_dt() {
		return pwd_dt;
	}
	public void setPwd_dt(Date pwd_dt) {
		this.pwd_dt = pwd_dt;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCompanycode() {
		return companycode;
	}
	public void setCompanycode(String companycode) {
		this.companycode = companycode;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getDeptcode() {
		return deptcode;
	}
	public void setDeptcode(String deptcode) {
		this.deptcode = deptcode;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getHired_dt() {
		return hired_dt;
	}
	public void setHired_dt(Date hired_dt) {
		this.hired_dt = hired_dt;
	}
	
	

		
}

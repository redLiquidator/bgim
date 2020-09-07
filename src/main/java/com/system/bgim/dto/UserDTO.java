package com.system.bgim.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
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
}

package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.UserMapper")
	public interface UserMapper {
	 
	    public int userCount() throws Exception;
	    public List<UserDTO> userList() throws Exception;
	}

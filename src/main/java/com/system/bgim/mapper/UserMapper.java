package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.UserMapper")
	public interface UserMapper {
	 
	    public int userCount() throws Exception;
	    public List<UserDTO> userList() throws Exception;
	    public UserDTO userDetail(String code) throws Exception;
	    public int userInsert(UserDTO user) throws Exception;
	    public int userUpdate(UserDTO user) throws Exception;
	    public int userDelete(String code) throws Exception;
	}

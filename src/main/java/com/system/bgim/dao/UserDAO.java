package com.system.bgim.dao;

import java.util.List;

import com.system.bgim.dto.UserDTO;

public interface UserDAO {
	public List<UserDTO> selectUsers(UserDTO param) throws Exception;
	}

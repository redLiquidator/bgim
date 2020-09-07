package com.system.bgim.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.system.bgim.dto.UserDTO;

public interface UserDAO {
	
	public List<UserDTO> selectUsers() throws Exception;
	}

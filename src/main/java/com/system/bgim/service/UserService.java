package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.UserDTO;
import com.system.bgim.mapper.UserMapper;

@Service("com.system.bgim.service.UserService")
public class UserService {
	
	@Resource(name="com.system.bgim.mapper.UserMapper")
    UserMapper userMapper;
	
	 public List<UserDTO> userListService() throws Exception{
		 System.out.println("service");
		 return userMapper.userList();
	 }

	}

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
		 System.out.println("userListService");
		 return userMapper.userList();
	 }
	 
	 public List<UserDTO> userListbyDomainService(UserDTO user) throws Exception{
		 return userMapper.userListbyDomain(user);
	 }

	 
	 public UserDTO userDetailService(String code) throws Exception{
	     return userMapper.userDetail(code);
	 }
	 
	 public int countUserService(UserDTO user) throws Exception{
		 return userMapper.countUserService(user);
	 }
	 
	 public int userInsertService(UserDTO user) throws Exception{     
	     return userMapper.userInsert(user);
	 }
	  
	 public int userUpdateService(UserDTO user) throws Exception{       
	     return userMapper.userUpdate(user);
	    }

	 public int userDeleteService(String code) throws Exception{
	        return userMapper.userDelete(code);
	    }
	}

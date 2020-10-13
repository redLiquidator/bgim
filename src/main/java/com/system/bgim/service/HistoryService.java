package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.UserDTO;
import com.system.bgim.mapper.UserMapper;

@Service("com.system.bgim.service.HistoryService")
public class HistoryService {
	
	@Resource(name="com.system.bgim.mapper.HistoryMapper")
    HistoryMapper historyMapper;
	
	 public List<UserDTO> provisionHistoryListService() throws Exception{
		 System.out.println("userListService");
		 return userMapper.userList();
	 }
	
	
	
	

}

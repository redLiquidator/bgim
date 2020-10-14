package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.mapper.HistoryMapper;
import com.system.bgim.mapper.UserMapper;

@Service("com.system.bgim.service.HistoryService")
public class HistoryService {
	
	@Resource(name="com.system.bgim.mapper.HistoryMapper")
    HistoryMapper historyMapper;
	
	 public List<UserDTO> userHistoryListService() throws Exception{
		 System.out.println("userHistoryListService");
		 return historyMapper.userHistoryList();
	 }
	 
	 public List<DomainDTO> domainHistoryListService() throws Exception{
		 System.out.println("domainHistoryListService");
		 return historyMapper.domainHistoryList();
	 }
	 
	 
	 public List<UserDTO> userHistoryInsertService(UserDTO user) throws Exception{
		 System.out.println("userHistoryInsertService");
		 return historyMapper.userHistoryInsert(user);
	 }
	 
	 public List<DomainDTO> domainHistoryInsertService(DomainDTO domain) throws Exception{
		 System.out.println("domainHistoryInsertService");
		 return historyMapper.domainHistoryInsert(domain);
	 }
	 
	 
	
	
	
	

}

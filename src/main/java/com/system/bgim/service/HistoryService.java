package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.LogFilesDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.mapper.HistoryMapper;
import com.system.bgim.mapper.UserMapper;

@Service("com.system.bgim.service.HistoryService")
public class HistoryService {
	
	@Resource(name="com.system.bgim.mapper.HistoryMapper")
    HistoryMapper historyMapper;
	
	 public List<HistoryDTO> userHistoryListService(HistoryDTO history) throws Exception{
		 System.out.println("userHistoryListService");
		 return historyMapper.userHistoryList(history);
	 }
	 
	 public List<HistoryDTO> domainHistoryListService() throws Exception{
		 System.out.println("domainHistoryListService");
		 return historyMapper.domainHistoryList();
	 }
	 
	 
	 public List<HistoryDTO> userHistoryInsertService(HistoryDTO history) throws Exception{
		 System.out.println("userHistoryInsertService");
		 return historyMapper.userHistoryInsert(history);
	 }
	 
	 public List<HistoryDTO> domainHistoryInsertService(HistoryDTO history) throws Exception{
		 System.out.println("domainHistoryInsertService");
		 return historyMapper.domainHistoryInsert(history);
	 }
	 
	 public int logFileInfoInsertService(LogFilesDTO logFiles) throws Exception{
		 System.out.println("domainHistoryInsertService");
		 return historyMapper.logFileInfoInsert(logFiles);
	 }
	 
	 public int logFileInfoUpdateService(LogFilesDTO logFiles) throws Exception{
		 System.out.println("domainHistoryUpdateService");
		 return historyMapper.logFileInfoUpdate(logFiles);
	 }
	 
	 public int CheckIflogFileNameExistsService(String fileName) {
		 System.out.println("CheckIflogFileNameExists");
		 return historyMapper.CheckIflogFileNameExists(fileName);
	}
}

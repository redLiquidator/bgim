package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.LogFilesDTO;
import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.HistoryMapper")
public interface HistoryMapper {

	    public List<HistoryDTO> userHistoryList(HistoryDTO history) throws Exception;
	    public List<HistoryDTO> domainHistoryList() throws Exception;		 
		public List<HistoryDTO> userHistoryInsert(HistoryDTO history) throws Exception;
		public List<HistoryDTO> domainHistoryInsert(HistoryDTO history) throws Exception;
		
		public int logFileInfoInsert(LogFilesDTO logFiles) throws Exception;
		public int logFileInfoUpdate(LogFilesDTO logFiles) throws Exception;
		public int CheckIflogFileNameExists(String fileName);
}

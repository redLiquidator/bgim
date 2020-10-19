package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.HistoryMapper")
public interface HistoryMapper {

	    public List<UserDTO> userHistoryList() throws Exception;
	    public List<DomainDTO> domainHistoryList() throws Exception;		 
		public List<HistoryDTO> userHistoryInsert(HistoryDTO history) throws Exception;
		public List<HistoryDTO> domainHistoryInsert(HistoryDTO history) throws Exception;
}

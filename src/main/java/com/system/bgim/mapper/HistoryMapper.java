package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.HistoryMapper")
public interface HistoryMapper {

	    public List<UserDTO> userHistoryList() throws Exception;
	    public List<DomainDTO> domainHistoryList() throws Exception;		 
		public List<UserDTO> userHistoryInsert(UserDTO user) throws Exception;
		public List<DomainDTO> domainHistoryInsert(DomainDTO domain) throws Exception;
}

package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.mapper.DomainMapper;

@Service("com.system.bgim.service.DomainService")
public class DomainService {
	
	@Resource(name="com.system.bgim.mapper.DomainMapper")
	DomainMapper domainMapper; 
	
	public List<DomainDTO> domainListService() throws Exception{
		System.out.println("domainListService");
		return domainMapper.domainList();
	} 

}

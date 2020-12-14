package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.mapper.DomainMapper;

@Service("com.system.bgim.service.DomainService")
public class DomainService {
	
	@Resource(name="com.system.bgim.mapper.DomainMapper")
	DomainMapper domainMapper; 
	
	public List<DomainDTO> domainListService(DomainDTO domain) throws Exception{
		System.out.println("domainListService(DomainDTO domain)");
		return domainMapper.domainList(domain);
	}
	
	public List<DomainDTO> domainListService(PageMakerDTO pageMaker) throws Exception{
		System.out.println("domainListService(DomainDTO domain)");
		return domainMapper.domainList(pageMaker);
	} 
	
	public int countDomainService(DomainDTO domain) {
		System.out.println("countDomainService(DomainDTO domain)");
		return domainMapper.countDomain(domain);
	}
}

package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DomainDTO;
import com.system.bgim.dto.PageMakerDTO;

@Repository("com.system.bgim.mapper.DomainMapper")
public interface DomainMapper {

	public List<DomainDTO> domainList(PageMakerDTO pageMaker) throws Exception;
	public List<DomainDTO> domainList(DomainDTO domain) throws Exception;
	public int countDomain(DomainDTO domain);
}

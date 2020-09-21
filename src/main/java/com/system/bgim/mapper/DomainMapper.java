package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DomainDTO;

@Repository("com.system.bgim.mapper.DomainMapper")
public interface DomainMapper {

	public List<DomainDTO> domainList() throws Exception;
}

package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DeptDTO;

@Repository("com.system.bgim.mapper.DeptMapper")
public interface DeptMapper {
	public List<DeptDTO> deptList() throws Exception;

}

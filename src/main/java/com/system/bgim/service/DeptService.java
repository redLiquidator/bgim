package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.mapper.DeptMapper;

@Service("com.system.bgim.service.DeptService")
public class DeptService {
	
	@Resource(name="com.system.bgim.mapper.DeptMapper")
	DeptMapper deptMapper;
	
	public List<DeptDTO> deptListService(DeptDTO dept) throws Exception{
		return deptMapper.deptList(dept);
	}

	public List<DeptDTO> deptDetailService(String companycode) throws Exception{
		return deptMapper.deptDetail(companycode);
	}
}

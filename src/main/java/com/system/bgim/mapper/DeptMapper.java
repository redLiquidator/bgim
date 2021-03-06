package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DeptDTO;
import com.system.bgim.dto.PageMakerDTO;

@Repository("com.system.bgim.mapper.DeptMapper")
public interface DeptMapper {
	public int countDept(DeptDTO dept) throws Exception;
	public List<DeptDTO> deptList(DeptDTO dept) throws Exception;
	public List<DeptDTO> deptList_pagination(PageMakerDTO pageMaker) throws Exception;
	public List<DeptDTO> deptDetail(String companycode) throws Exception;

}

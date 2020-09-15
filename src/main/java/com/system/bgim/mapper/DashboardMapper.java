package com.system.bgim.mapper;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DashboardDTO;

@Repository("com.system.bgim.mapper.DashboardMapper")
public interface DashboardMapper {
	public int dashboardCount() throws Exception;
	public List<DashboardDTO> dashboardList() throws Exception;
	public DashboardDTO dashboardDetail(int bno) throws Exception;
	public int dashboardInsert(DashboardDTO board) throws Exception;
	public int dashboardUpdate(DashboardDTO board) throws Exception;
	public int dashboardDelete(int bno) throws Exception;
	
}

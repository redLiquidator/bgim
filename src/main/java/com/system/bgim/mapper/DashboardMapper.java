package com.system.bgim.mapper;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.DashboardDTO;
import com.system.bgim.dto.FileDTO;

@Repository("com.system.bgim.mapper.DashboardMapper")
public interface DashboardMapper {
	public int dashboardCount() throws Exception;
	public List<DashboardDTO> dashboardList() throws Exception;
	public DashboardDTO dashboardDetail(int bno) throws Exception;
	public int dashboardInsert(DashboardDTO board) throws Exception;
	public int dashboardUpdate(DashboardDTO board) throws Exception;
	public int dashboardDelete(int bno) throws Exception;
	
	//파일업로드
	public int fileInsert(FileDTO file) throws Exception;
	//파일정보조회
	public FileDTO fileDetail(int bno) throws Exception;
	
}

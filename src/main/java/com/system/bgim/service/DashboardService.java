package com.system.bgim.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.system.bgim.dto.DashboardDTO;
import com.system.bgim.dto.FileDTO;
import com.system.bgim.dto.UserDTO;
import com.system.bgim.mapper.DashboardMapper;

@Service("com.system.bgim.service.DashboardService")
public class DashboardService {
	
	@Resource(name="com.system.bgim.mapper.DashboardMapper")
	DashboardMapper dashboardMapper;
	
	 public int dashboardCount() throws Exception{     
	     return dashboardMapper.dashboardCount();
	 }
	 
	 public List<DashboardDTO> dashboardListService() throws Exception{
	        return dashboardMapper.dashboardList();
	 }
	
	 public DashboardDTO dashboardDetailService(int bno) throws Exception{       
	        return dashboardMapper.dashboardDetail(bno);
	 }	 
	 
	 public int dashboardInsertService(DashboardDTO board) throws Exception{      
	        return dashboardMapper.dashboardInsert(board);
	 }
	
	 public int dashboardUpdateService(DashboardDTO board) throws Exception{       
		    return dashboardMapper.dashboardUpdate(board);
	 }
	 
	 public int dashboardDeleteService(int bno) throws Exception{
	        return dashboardMapper.dashboardDelete(bno);
	 }
	 
	 public int fileInsertService(FileDTO file) throws Exception{
		    return dashboardMapper.fileInsert(file);
	}
	 
	 public FileDTO fileDetailService(int bno) throws Exception{    
		    return dashboardMapper.fileDetail(bno);
	}
}

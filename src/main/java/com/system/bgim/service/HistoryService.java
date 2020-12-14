package com.system.bgim.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.system.bgim.dto.HistoryDTO;
import com.system.bgim.dto.LogFilesDTO;
import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.mapper.HistoryMapper;

@Service("com.system.bgim.service.HistoryService")
public class HistoryService {
	
	@Resource(name="com.system.bgim.mapper.HistoryMapper")
    HistoryMapper historyMapper;
	
	public List<HistoryDTO> historyListService_pagination(PageMakerDTO pageMaker) throws Exception{
		 System.out.println("historyListService_pagination");
		 return historyMapper.historyList_pagination(pageMaker);
	}
	
	public int countHistoryService(HistoryDTO history) throws Exception{
		System.out.println("countHistoryService");
		 return historyMapper.countHistory(history);
	}
	
	 public List<HistoryDTO> userHistoryListService(HistoryDTO history) throws Exception{
		 System.out.println("userHistoryListService");
		 return historyMapper.userHistoryList(history);
	 }
	 
	 public List<HistoryDTO> domainHistoryListService() throws Exception{
		 System.out.println("domainHistoryListService");
		 return historyMapper.domainHistoryList();
	 }
	 
	 
	 public List<HistoryDTO> userHistoryInsertService(HistoryDTO history) throws Exception{
		 System.out.println("userHistoryInsertService");
		 return historyMapper.userHistoryInsert(history);
	 }
	 
	 public List<HistoryDTO> domainHistoryInsertService(HistoryDTO history) throws Exception{
		 System.out.println("domainHistoryInsertService");
		 return historyMapper.domainHistoryInsert(history);
	 }
	 
	 public int logFileInfoInsertService(LogFilesDTO logFiles) throws Exception{
		 System.out.println("domainHistoryInsertService");
		 return historyMapper.logFileInfoInsert(logFiles);
	 }
	 
	 public int logFileInfoUpdateService(LogFilesDTO logFiles) throws Exception{
		 System.out.println("domainHistoryUpdateService");
		 return historyMapper.logFileInfoUpdate(logFiles);
	 }
	 
	 public List<String> uploadFilesService() throws Exception{
		 System.out.println("uploadFilesService()");
		 
		 LogFilesDTO logFiles = new LogFilesDTO();
		  List<File> dirAllList = getAllDirFileList("D:/git_src/bgim/logs/");
		  List<String> dirList = new ArrayList<String>();
		  for(int i=0;i<dirAllList.size();++i) {
		  if(dirAllList.get(i).toString().contains("logback_sync_provision")) {
			  //log_files테이블에 파일정보저장. 파일정보가 테이블에 있으면 update, 없으면  insert
			  logFiles.setFile_path((dirAllList.get(i).toString()));
			  System.out.println((dirAllList.get(i).toString().substring(21)));
			  logFiles.setFile_name((dirAllList.get(i).toString().substring(21)));
			  logFiles.setMenu("log files");
			  if(CheckIfFilenameExists(logFiles.getFile_name()) == 1){
				  System.out.println("로그파일이 존재");					
				  logFileInfoUpdateService(logFiles);					 
			  }else if(CheckIfFilenameExists(logFiles.getFile_name()) == 0){
				  System.out.println("로그파일이 미존재");		
				  logFileInfoInsertService(logFiles);					 
			  }
			  dirList.add(dirAllList.get(i).toString().substring(21));
		  } } 
		  return dirList;
	 }
	 
	 public int CheckIfFilenameExists(String file_name) {
		 return historyMapper.CheckIflogFileNameExists(file_name);
		}
		public static List<File> getAllDirFileList(String dirPath) {
			// 디렉토리 파일 리스트
			List<File> dirFileList = null;
			File dir = new File(dirPath);

			if (dir.exists()) {
				// 파일 목록을 구함
				File[] files = dir.listFiles();
				// 파일 배열을 파일 리스트로 변화함
				dirFileList = Arrays.asList(files);
			}
			return dirFileList;
		} 

}

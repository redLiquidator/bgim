package com.system.bgim.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.system.bgim.dto.PageMakerDTO;
import com.system.bgim.dto.UserDTO;

@Repository("com.system.bgim.mapper.UserMapper")
	public interface UserMapper {
	 
	    public int userCount(UserDTO user) throws Exception;
	    public List<UserDTO> userList(PageMakerDTO pageMaker) throws Exception;
	    public List<UserDTO> userList(UserDTO user) throws Exception;
	    public List<UserDTO> userListbyDomain(UserDTO user) throws Exception;
	    public UserDTO userDetail(String code) throws Exception;
	    public int countUserService(UserDTO user) throws Exception;
	    public int userInsert(UserDTO user) throws Exception;
	    public int userUpdate(UserDTO user) throws Exception;
	    public int userDelete(String code) throws Exception;
		public int pwdReset(UserDTO user) throws Exception;
	}

package com.system.bgim.controller;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.system.bgim.dao.UserDAO;
import com.system.bgim.dto.UserDTO;

@RestController
	@MapperScan(basePackages = "com.system.bgim.dao")
	public class UserController {
	 
	    @Autowired
	    private UserDAO userDAO;
	    
	    @RequestMapping("/users")
	    public List<UserDTO> users(@RequestParam(value = "country", defaultValue = "") String country) throws Exception {
		/* final UserDTO param = new UserDTO(0, null, country); */
	        final UserDTO param = new UserDTO();
	        final List<UserDTO> userList = userDAO.selectUsers(param);
	        return userList;
	    }
}

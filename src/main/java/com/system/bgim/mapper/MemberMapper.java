package com.system.bgim.mapper;

import java.util.List;

import com.system.bgim.dto.MemberDTO;

public interface MemberMapper {
	public MemberDTO readUser(String username);	 
    public List<String> readAuthority(String username);

}

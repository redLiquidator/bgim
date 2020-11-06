package com.system.bgim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.system.bgim.dto.MemberDTO;
import com.system.bgim.mapper.MemberMapper;

@Service
public class CustomUserDetailsService {
	
	 private static final String ROLE_PREFIX = "ROLE_";

	 @Autowired
	    MemberMapper memberMapper;
	 
	    @Override
	    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	        
	        MemberDTO member = memberMapper.readUser(username);
	        if(member != null) {
	            member.setAuthorities(makeGrantedAuthority(memberMapper.readAuthority(username)));
	        }
	        return new UserDetails(member);
	    }

	 

}

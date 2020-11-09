package com.system.bgim.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.system.bgim.dto.MemberDTO;
import com.system.bgim.dto.SecurityMemberDTO;
import com.system.bgim.mapper.MemberMapper;

@Service
public class CustomUserDetailsService implements UserDetailsService{
	
	 private static final String ROLE_PREFIX = "ROLE_";
	    
	    @Autowired
	    MemberMapper memberMapper;
	 
	    @Override
	    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	        
	        MemberDTO member = memberMapper.readUser(username);
	        if(member != null) {
	            member.setAuthorities(makeGrantedAuthority(memberMapper.readAuthority(username)));
	        }
	        return new SecurityMemberDTO(member);
	    }
	    
	    private static List<GrantedAuthority> makeGrantedAuthority(List<String> roles){
	        List<GrantedAuthority> list = new ArrayList<>();
	        roles.forEach(role -> list.add(new SimpleGrantedAuthority(ROLE_PREFIX + role)));
	        return list;
	    }

}

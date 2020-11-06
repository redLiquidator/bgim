package com.system.bgim.dto;

import org.springframework.security.core.userdetails.User;

public class SecurityMemberDTO extends User{
	 private static final long serialVersionUID = 1L;
	    
	    private String ip;
	    
	    public SecurityMemberDTO(MemberDTO member) {
	        super(member.getUsername(), member.getPassword(), member.getAuthorities());
	    }
	    
	    public String getIp() {
	        return ip;
	    }
	 
	    public void setIp(String ip) {
	        this.ip = ip;
	    }
	
}

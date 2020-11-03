package com.system.bgim.dto;

import org.springframework.stereotype.Repository;

@Repository
public class AuthuserDAO {
	private static Authusers list = new Authusers(); 
	
	static { 
		list.getAuthuserList().add(new Authuser(1, "Lokesh", "Gupta", "howtodoinjava@gmail.com")); 
		list.getAuthuserList().add(new Authuser(2, "Alex", "Kolenchiskey", "abc@gmail.com")); 
		list.getAuthuserList().add(new Authuser(3, "David", "Kameron", "titanic@gmail.com")); 
	} 
	
	public Authusers getAllAuthusers() { 
		return list; 
	} 
	
	public void addAuthuser(Authuser authuser) { 
		list.getAuthuserList().add(authuser); 
	}
}

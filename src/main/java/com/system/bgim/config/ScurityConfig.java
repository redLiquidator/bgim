package com.system.bgim.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@AllArgsConstructor
public class ScurityConfig extends WebSecurityConfigurerAdapter{
	
	@Override // 스프링에게 이 클래스는 환경구성 설정파일임을 알려준다
	protected void configure(HttpSecurity http) throws Exception{
		http.csrf().disable().authorizeRequests().anyRequest().authenticated().and().httpBasic();
	}
	
	@Autowired 
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{ 
		auth.inMemoryAuthentication().withUser("user").password("{noop}1234").roles("USER"); 
	}


}

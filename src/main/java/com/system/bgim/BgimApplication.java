package com.system.bgim;

import javax.faces.application.Application;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.web.bind.annotation.RestController;

@MapperScan(value={"com.system.bgim.mapper"})
@SpringBootApplication
@RestController
public class BgimApplication extends SpringBootServletInitializer{

	public static void main(String[] args){
		SpringApplication.run(BgimApplication.class, args);
		System.out.println("bgimapplication");
		System.setProperty("spring.profiles.default", "local");
		 	
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Application.class);
	}
 
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);
 
		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mappers/im_sqlmap/*Mapper.xml");
		sessionFactory.setMapperLocations(res);
 
		return sessionFactory.getObject();
	}
}

package com.system.bgim;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@MapperScan(value={"com.system.bgim.mapper"})
@SpringBootApplication
public class BgimApplication extends AppRunner{

	public static void main(String[] args){
		SpringApplication.run(BgimApplication.class, args);
		System.out.println("bgimapplication");
		
		AppRunner runner= new AppRunner(); 
		runner.run(args);		
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

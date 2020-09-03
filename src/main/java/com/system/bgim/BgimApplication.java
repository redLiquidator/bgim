package com.system.bgim;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@SpringBootApplication
public class BgimApplication {

	public static void main(String[] args) {
		SpringApplication.run(BgimApplication.class, args);
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

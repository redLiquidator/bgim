package com.system.bgim;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;

public class AppRunner implements ApplicationRunner{
	
	// slf4j 로깅 파사드를 통해 logback 로깅 모듈을 지원
	private Logger logger = LoggerFactory.getLogger(AppRunner.class);

	@Override
	public void run(ApplicationArguments args) throws Exception {
		logger.info("===========");
		logger.info("logger.info");
		logger.info("===========");
		logger.trace("A TRACE Message");
        logger.debug("A DEBUG Message");
        logger.info("An INFO Message");
        logger.warn("A WARN Message");
        logger.error("An ERROR Message");
		
	}

	public void run(String[] args) {
		// TODO Auto-generated method stub
		logger.info("log4j day since 20201012");
		
	}
	
	

}

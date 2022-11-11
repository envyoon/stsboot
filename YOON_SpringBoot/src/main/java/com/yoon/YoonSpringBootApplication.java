package com.yoon;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// log4j2 설정
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@SpringBootApplication
public class YoonSpringBootApplication {

	private static Logger logger = LogManager.getLogger(YoonSpringBootApplication.class);
	
	public static void main(String[] args) {
		SpringApplication.run(YoonSpringBootApplication.class, args);
		
	
		//logger.info("Staring Spring Boot application..");
		//SpringApplication app = new SpringApplication(YoonSpringBootApplication.class);
		//app.run(args);
	}

}
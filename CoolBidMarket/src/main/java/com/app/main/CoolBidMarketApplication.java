package com.app.main;

import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class CoolBidMarketApplication {

	@PostConstruct
	public void init(){
		 TimeZone the_time_zone = TimeZone.getDefault();
		 the_time_zone.setDefault(the_time_zone.getTimeZone("UTC"));   // It will set UTC timezone
	}
	    
	public static void main(String[] args) {
		SpringApplication.run(CoolBidMarketApplication.class, args);
	}

}

package com.app.main.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class UploadFileConfiguration implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/uploadFiles/**").addResourceLocations("/uploads/");
		registry.addResourceHandler("/uploads/**").addResourceLocations("/uploads/");
	}

	@Bean
	public MultipartResolver resolvers() {
		return new StandardServletMultipartResolver();
//		MultipartResolver multipartResolver = new StandardServletMultipartResolver();
	}
}

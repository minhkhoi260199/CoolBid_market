package com.app.main.configurations;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.cors().and().csrf().disable();
		
		http.authorizeRequests()
//			.antMatchers("/api/demo/**").access("hasRole('Shop')")
			.antMatchers("/seller/addProduct").access("hasRole('ROLE_SHOP') or hasRole('ROLE_ADMIN')")
//			.antMatchers("/category/**").access("hasRole('ROLE_SUPER_ADMIN') or hasRole('ROLE_ADMIN') or hasRole('ROLE_EMPLOYEE')")
			.and()
			.formLogin().loginPage("/auth/login?login")
			.loginProcessingUrl("/auth/process-login")
			.defaultSuccessUrl("/product/list")
			.failureUrl("/auth/login?error")
			.usernameParameter("username")
			.passwordParameter("password")
//			.and()
//			.logout().logoutUrl("/account/logout")
//			.logoutSuccessUrl("/account/login?logout")
			.and()
			.exceptionHandling().accessDeniedPage("/seller")
		;
		
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	

}

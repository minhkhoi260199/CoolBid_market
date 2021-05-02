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
			.antMatchers("/seller/**").access("hasRole('ROLE_CUSTOMER') or hasRole('ROLE_ADMIN')")
			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
			.and()
			.formLogin().loginPage("/auth/login?login")
			.loginProcessingUrl("/auth/process-login")
			.defaultSuccessUrl("/auth/role")
			.failureUrl("/auth/login?error")
			.usernameParameter("username")
			.passwordParameter("password")
			.and()
			.logout()
			.logoutSuccessUrl("/customer")
			.and()
			.exceptionHandling().accessDeniedPage("/customer")
		;
		
	}
	
	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	

}

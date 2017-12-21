package com.protoApp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
public class LoginConfig extends WebSecurityConfigurerAdapter  implements WebMvcConfigurer  {
	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//.anyRequest().authenticated()
		http 
			.authorizeRequests()
			.antMatchers("/homePage","/").access("hasRole('ADMIN') or hasRole('USER') or hasRole ('MANAGER')")
			.antMatchers("/user/**").access("hasRole('USER') or hasRole('ADMIN') ")
			.antMatchers("/manager/**").access("hasAnyRoles('MANAGER') or hasRole('ADMIN')")
			
			.and()
			.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/authenticateUser").permitAll()
			.and()
			.logout().permitAll();

	    }
		
	}
	


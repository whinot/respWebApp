package com.protoApp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.ui.Model;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;

@Configuration
@EnableWebSecurity
public class SecurityConfig implements WebMvcConfigurer  {

	@Bean
	public UserDetailsService userDetailsService() throws Exception {
		// ensure the passwords are encoded properly
		UserBuilder users = User.withDefaultPasswordEncoder();
		InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
		manager.createUser(users.username("user").password("password").roles("USER").build());
		manager.createUser(users.username("admin").password("password").roles("ADMIN").build());
		manager.createUser(users.username("manager").password("password").roles("MANAGER").build());
		return manager;
		
	}
	
}

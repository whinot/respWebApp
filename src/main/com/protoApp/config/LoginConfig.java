package com.protoApp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.ui.Model;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebSecurity
public class LoginConfig extends WebSecurityConfigurerAdapter  implements WebMvcConfigurer  {

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests()
			.anyRequest().authenticated()
			.and()
			.formLogin()
			.loginPage("/showLoginPage")
			.loginProcessingUrl("/authenticateUser").permitAll()
			.and()
			.logout().permitAll();
		
	}
	
	

}

package com.example.demo.config;

import java.util.*;

import org.springframework.context.annotation.*;
import org.springframework.security.access.prepost.*;
import org.springframework.security.config.annotation.method.configuration.*;
import org.springframework.security.config.annotation.web.builders.*;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.core.userdetails.User.*;
import org.springframework.security.crypto.bcrypt.*;
import org.springframework.security.crypto.password.*;
import org.springframework.security.provisioning.*;
import org.springframework.security.web.*;
import org.springframework.security.web.access.expression.*;

@Configuration
@EnableMethodSecurity
public class MyConfig2 {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) 
			throws Exception {
		// 기본 설정 변경해줌
		http.formLogin()
			.loginPage("/sub33/mylogin")
			.defaultSuccessUrl("/sub33/loginSuccess", true) // 로그인을 성공하면 list로 이동, true이면 로그인 성공할 시 무조건 list로 이동
			.usernameParameter("id") // 기본값 username
			.passwordParameter("pw"); // 기본값 password
		
		http.csrf().disable();
		
		http.authorizeHttpRequests().requestMatchers("/abc").authenticated();
		http.authorizeHttpRequests().anyRequest().permitAll();
		
		return http.build();
	}
	
	@Bean
	public UserDetailsService userDetailsService() {
		PasswordEncoder encoder = passwordEncoder();
		
		String pw1 = encoder.encode("pw1"); // 평문을 알아보기 힘든 코드로 변환
		String pw2 = encoder.encode("pw2"); // 평문을 알아보기 힘든 코드로 변환
		
		
		UserDetails user1 = User.builder()
				.username("user1")
				.password(pw1)
				.authorities(List.of())
				.build();
		UserDetails user2 = User.builder()
				.username("user2")
				.password(pw2)
				.authorities(List.of())
				.build();
		
		return new InMemoryUserDetailsManager(user1, user2);
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}









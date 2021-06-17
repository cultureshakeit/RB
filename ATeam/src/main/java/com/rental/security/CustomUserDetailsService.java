package com.rental.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.rental.domain.CustomUser;
import com.rental.domain.MemberVO;
import com.rental.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	
	@Setter(onMethod_ = { @Autowired })
	private MemberService service;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		log.warn("Load User & UserName : " + username);
		
		// userName means userid
		MemberVO vo = service.read(username);
		
		
		log.warn("queried by member mapper :" + vo);
		return vo == null ? null : new CustomUser(vo);
	}

}

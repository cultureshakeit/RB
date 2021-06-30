package com.rental.service;

import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.rental.domain.CustomUser;
import com.rental.domain.MemberVO;

import lombok.Setter;


public class CustomUserDetailService implements UserDetailsService {
	
	boolean enabled = true;
    boolean accountNonExpired = true;
    boolean credentialsNonExpired = true;
    boolean accountNonLocked = true;
    
//    @Setter(onMethod_ = { @Autowired })
//    MemberVO vo;
    
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		if(vo == null){
//            throw new UsernameNotFoundException("");
//        }
//		CustomUser userCustom = new CustomUser(vo);
		return null;
	}

}

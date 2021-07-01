package com.rental.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import com.rental.service.TouristService;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter 
@Setter 
@ToString
public class CustomUser extends User {

	private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;

	private MemberVO member;

//	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
//		super(username, password, authorities);
//	}
	
	public CustomUser(MemberVO vo) {
		// TODO Auto-generated constructor stub
//		vo.getAuthList().stream()
//		  .map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
//		  .collect(Collectors.toList());
		
		super(vo.getUserid(), vo.getUserpw(), vo.isEnabled(), true, true, true,	 
				 vo.getAuthList().stream()
 				  .map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
 				  .collect(Collectors.toList())
		
		);
		
		this.member = vo;
	}

}

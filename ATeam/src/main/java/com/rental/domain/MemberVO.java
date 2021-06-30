package com.rental.domain;


import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Component
public class MemberVO {

	private String userid,userpw;
	
	
	private String nickname,useremail;
	
	private String userName,auth;
	
	private boolean enabled;
	
	private String regDate;
	private Date updateDate;
	private List<AuthVO> authList;
	
	private String ip;
	private boolean thisip;
}

package com.rental.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AReplyVO {
	
	private int num,n_num;
	private String nickname;
	private String pw; //삭제 버튼 관련
	private String comm;
	private Date regdate;
}

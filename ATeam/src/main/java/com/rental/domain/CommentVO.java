package com.rental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CommentVO {
	private int id,ref_group, indent,reply_num;
	private String name, content, createdat, updatedat,user_id;
	
}

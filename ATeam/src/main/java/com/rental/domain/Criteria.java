package com.rental.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
public class Criteria {

	private int pageNum; // page number

	private int amount; // 한 페이지에 출력할 레코드 개수

	private String type;

	private String keyword;
	// 유저의 좋아요와 즐겨찾기 논리값
	private String userid;
	// 검색옵션
	private String TagName;
	private String Title;
	private String sid;
	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}

}

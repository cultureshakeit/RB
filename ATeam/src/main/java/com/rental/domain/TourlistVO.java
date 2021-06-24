package com.rental.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TourlistVO {

	private int pageNum;
	private int amount;
	private String type;
	private String keyword;

	public TourlistVO() {
		this(1, 10);
	}

	public TourlistVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	public String[] getTypeArr() {
		return type==null? new String[] {}:type.split("");
	}
	
	

}

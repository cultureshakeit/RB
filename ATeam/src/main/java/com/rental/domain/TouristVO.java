package com.rental.domain;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TouristVO {
	
	private String contentsid, title, tag, address, roadaddress, postcode, phoneno, introduction, region1, region2, photo,likes_list;
	private float latitude, longitude;
	private int views,likes;
	private boolean like_true,favor_true;
}

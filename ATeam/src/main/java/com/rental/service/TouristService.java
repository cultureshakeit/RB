package com.rental.service;

import java.util.List;

import com.rental.domain.Criteria;
import com.rental.domain.NoticeVO;
import com.rental.domain.TouristVO;

public interface TouristService {

	
	public List<TouristVO> List(Criteria cri);
	public TouristVO getOne(String sid);
	public int countAll();
	public String[] getTags(String sid);
	public void addViews(String sid);
	public void addLike(String userid, String sid);
	public void deleteLike(String userid, String sid);
	public void addFavor(String userid, String sid);
	public void rmFavor(String userid, String sid);

}

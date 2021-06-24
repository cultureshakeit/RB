package com.rental.mapper;

import java.util.List;

import com.rental.domain.Criteria;
import com.rental.domain.NoticeVO;
import com.rental.domain.TouristVO;

public interface TouristMapper {
	
	public List<TouristVO> List(Criteria cri);
	public TouristVO getOne(String sid);
	
}

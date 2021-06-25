package com.rental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rental.domain.Criteria;
import com.rental.domain.NoticeVO;
import com.rental.domain.TouristVO;
import com.rental.mapper.NoticeMapper;
import com.rental.mapper.TouristMapper;

import lombok.Setter;

@Service
public class TouristServiceImpl implements TouristService {

	@Setter(onMethod_ = { @Autowired })
	private TouristMapper mapper;

	

	@Override
	public List<TouristVO> List(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.List(cri);
	}



	@Override
	public TouristVO getOne(String sid) {
		// TODO Auto-generated method stub
		return mapper.getOne(sid);
	}



	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return mapper.countAll();
	}



	@Override
	public String[] getTags(String sid) {
		// TODO Auto-generated method stub
		return mapper.getTags(sid);
	}

	
}

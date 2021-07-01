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
	public TouristVO getOne(String sid, String userid) {
		
		return mapper.getOne(sid,userid);
	}


	@Override
	public int countAll(String TagName) {
		// TODO Auto-generated method stub
		return mapper.countAll(TagName);
	}



	@Override
	public String[] getTags(String sid) {
		// TODO Auto-generated method stub
		return mapper.getTags(sid);
	}



	@Override
	public void addViews(String sid) {
		// TODO Auto-generated method stub
		mapper.addViews(sid);
	}



	@Override
	public void addLike(String userid, String sid) {
		// TODO Auto-generated method stub
		mapper.addLike(userid,sid);
	}



	@Override
	public void deleteLike(String userid, String sid) {
		// TODO Auto-generated method stub
		mapper.deleteLike(userid,sid);
	}



	@Override
	public void addFavor(String userid, String sid) {
		// TODO Auto-generated method stub
		mapper.addFavor(userid,sid);
	}



	@Override
	public void rmFavor(String userid, String sid) {
		// TODO Auto-generated method stub
		mapper.rmFavor(userid,sid);
	}



	

	
}

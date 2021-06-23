package com.rental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rental.domain.Criteria;
import com.rental.domain.NoticeVO;
import com.rental.mapper.NoticeMapper;

import lombok.Setter;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Setter(onMethod_ = { @Autowired })
	private NoticeMapper mapper;
	@Override
	public void insert(NoticeVO nvo) {
		mapper.Insert(nvo);
	}
	@Override
	public List<NoticeVO> List(Criteria cri) {
		return mapper.List(cri);
	}
	@Override
	public int NoticeCount() {
		return mapper.NoticeCount();
	}
	@Override
	public NoticeVO viewer(int sequence) {
		return mapper.viewer(sequence);
	}
	@Override
	public void update(NoticeVO nvo) {
		mapper.modify(nvo);
	}
	@Override
	public int delete(NoticeVO nvo) {
		return mapper.delete(nvo);
	}
	@Override
	public int disrecommend(int sequence) {
	return mapper.disrecommend(sequence);	
	}
	@Override
	public int recommend(int sequecne) {
		return mapper.recommend(sequecne);
	}
	@Override
	public int viewcount(int sequence) {
		return mapper.viewcount(sequence);
	}
}

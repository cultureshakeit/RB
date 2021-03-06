package com.rental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rental.domain.CommentVO;
import com.rental.domain.Criteria;
import com.rental.domain.RereplyVO;
import com.rental.mapper.CommentMapper;

import lombok.Setter;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Setter(onMethod_ = {@Autowired})
	private CommentMapper mapper;
	@Override
	public List<CommentVO> getComments(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getComments(cri);
	}
	@Override
	public List<CommentVO> getReplys(String sid, int cid, int cgp) {
		// TODO Auto-generated method stub
		return mapper.getReplys(sid, cid, cgp);
	}
	@Override
	public void add_reply(RereplyVO ry) {
		// TODO Auto-generated method stub
		mapper.add_reply(ry);
	}

}

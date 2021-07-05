package com.rental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rental.domain.CommentVO;
import com.rental.domain.Criteria;
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

}

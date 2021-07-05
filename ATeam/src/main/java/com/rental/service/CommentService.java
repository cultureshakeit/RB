package com.rental.service;

import java.util.List;

import com.rental.domain.CommentVO;
import com.rental.domain.Criteria;

public interface CommentService {
	
	public List<CommentVO> getComments(Criteria cri);

}

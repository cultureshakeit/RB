package com.rental.mapper;

import java.util.List;

import com.rental.domain.CommentVO;
import com.rental.domain.Criteria;
 
public interface CommentMapper {
	
	
	public List<CommentVO> getComments(Criteria cri);

}

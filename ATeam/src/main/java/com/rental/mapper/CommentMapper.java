package com.rental.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rental.domain.CommentVO;
import com.rental.domain.Criteria;
import com.rental.domain.RereplyVO;
 
public interface CommentMapper {
	
	
	public List<CommentVO> getComments(Criteria cri);
	public List<CommentVO> getReplys(@Param("sid") String sid,@Param("cid") int cid,@Param("cgp") int cgp);
	public void add_reply(RereplyVO ry);
}

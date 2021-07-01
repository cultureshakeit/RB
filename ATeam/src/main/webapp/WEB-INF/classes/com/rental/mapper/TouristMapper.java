package com.rental.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rental.domain.Criteria;
import com.rental.domain.TouristVO;

public interface TouristMapper {
	
	
	public List<TouristVO> List(Criteria cri);
	public TouristVO getOne(@Param("sid") String sid,@Param("userid") String userid);
	public int countAll();
	public String[] getTags(String sid);
	public void addViews(String sid);
//	좋아요 LIKE
	public void addLike(@Param("userid") String userid,@Param("sid") String sid);
	public void deleteLike(@Param("userid") String userid,@Param("sid") String sid);
//	즐겨찾기 FavorList
	public void addFavor(@Param("userid") String userid,@Param("sid") String sid);
	public void rmFavor(@Param("userid") String userid,@Param("sid") String sid);
}

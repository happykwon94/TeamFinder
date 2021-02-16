package kr.co.multi.teamfinder.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.Post;

@Mapper
public interface PostMapper {
	
	public int addPost(Post post) throws Exception;
	
}

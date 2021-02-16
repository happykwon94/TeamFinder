package kr.co.multi.teamfinder.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.User;

@Mapper
public interface UserMapper {
	public User getUser(int id);
}

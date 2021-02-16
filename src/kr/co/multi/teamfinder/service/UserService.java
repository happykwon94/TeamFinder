package kr.co.multi.teamfinder.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.UserMapper;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public int getUser(int id) {
		
		try {
			System.out.println(id);
			userMapper.getUser(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
}

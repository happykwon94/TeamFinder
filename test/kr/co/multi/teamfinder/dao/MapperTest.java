package kr.co.multi.teamfinder.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.multi.teamfinder.config.ApplicationConfig;
import kr.co.multi.teamfinder.dto.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = ApplicationConfig.class)
public class MapperTest {
	
	@Autowired
	private UserMapper userMapper;
	
	@Test
	public void getUser() throws Exception{
		
		User user = userMapper.getUser(1);
		
		System.out.println(user);
	}
	
}

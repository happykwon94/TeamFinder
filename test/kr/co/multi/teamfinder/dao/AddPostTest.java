package kr.co.multi.teamfinder.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.multi.teamfinder.config.ApplicationConfig;
import kr.co.multi.teamfinder.dto.Post;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = ApplicationConfig.class)
public class AddPostTest {

	@Autowired
	private PostMapper postMapper;
	
	@Test
	public void addPost() throws Exception{
		
		Post post = new Post();
		post.setTitle("주제1");
		post.setUser_index(1);
		post.setContext("본문1");
		post.setProject_period("3달 이상");
		post.setRegion("경기도");
		post.setMeeting_method("비대면");
		post.setRecruiting_number("5");
		post.setProject_stack("java/C");
		post.setBoard_type(0);
		
		System.out.println(post);
		
		postMapper.addPost(post);
		
		System.out.println("성공");
	}
	
	@Test
	public void getPosts() throws Exception{
		List<Post> posts = postMapper.getPosts();
		
		System.out.println(posts);
	}
	
}

package kr.co.multi.teamfinder.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.PostMapper;
import kr.co.multi.teamfinder.dto.Post;

@Service
public class PostService {
	
	@Autowired
	private PostMapper postMapper;

	public int addPost(Post post) {
		int returnVal = 0;
		
		try {
			returnVal = postMapper.addPost(post);
		} catch (Exception e) {
			returnVal = 0;
		}
		
		return returnVal;
	}
	
}

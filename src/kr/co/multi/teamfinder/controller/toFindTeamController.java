package kr.co.multi.teamfinder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.service.PostService;

@Controller
public class toFindTeamController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/toFindTeam")
	public String toFindTeam(Model model) {
		List<Post> posts = postService.getPosts();
		
		model.addAttribute("posts", posts);
		
		return "toFindTeam";
	}
	
	@GetMapping("/toFindTeamCreate")
	public String toFindTeamCreate() {
		return "toFindTeamCreate";
	}
	
	@GetMapping("/toFindTeamDetail")
	public String toFindTeamDetail() {
		return "toFindTeamDetail";
	}
	
	@PostMapping("/addPost")
	public String addPost(Post post) {
				
		int result = postService.addPost(post);
				
		if(result == 1) {
			return "redirect:/toFindTeam";
		}
		else
			return "redirect:/";
	}
}

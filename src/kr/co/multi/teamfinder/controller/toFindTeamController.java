package kr.co.multi.teamfinder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		
		return "/toFindTeam/toFindTeam";
	}
	
	@GetMapping("/toFindTeamCreate")
	public String toFindTeamCreate() {
		return "/toFindTeam/toFindTeamCreate";
	}
	
	@GetMapping("/toFindTeamDetail")
	public String toFindTeamDetail() {
		return "/toFindTeam/toFindTeamDetail";
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
	
	@GetMapping("/getPost/{post_id}")
	public String getPost(@PathVariable(name="post_id")String post_id, Model model) {
		
		System.out.println("---------------------------------------- Check : "+post_id);
		
		Post post = postService.getPost(post_id);
		
		model.addAttribute("post", post);
		
		return "/toFindTeam/toFindeTeamDetail";
	}
}

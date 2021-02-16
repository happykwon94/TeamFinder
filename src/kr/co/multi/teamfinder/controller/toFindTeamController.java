package kr.co.multi.teamfinder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.service.PostService;

@Controller
public class toFindTeamController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/toFindTeamCreate")
	public String toFindTeamCreate() {
		return "toFindTeamCreate";
	}
	
	@GetMapping("/toFindTeam")
	public String toFindTeam() {
		return "toFindTeam";
	}
	
	@GetMapping("/toFindTeamDetail")
	public String toFindTeamDetail() {
		return "toFindTeamDetail";
	}
	
	@PostMapping("/addPost")
	public String addPost(Post post) {
		
		System.out.println(post);
		
		int result = postService.addPost(post);
				
		if(result == 1) {
			System.out.println("성공");
			return "redirect:/";
		}
		else
			return "redirect:/";
	}
}

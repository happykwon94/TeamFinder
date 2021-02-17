package kr.co.multi.teamfinder.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.multi.teamfinder.dto.User;
import kr.co.multi.teamfinder.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/index")
	public String index() {
		return "/main/index";
	}
	
	@GetMapping("/login")
	public String hello() {
		return "/main/user/login";
	}
	
	@GetMapping("/signUp")
	public String main() {
		return "/main/user/signUp";
	}
	
	@PostMapping("/login.do")
	public String login(HttpSession session, @ModelAttribute User user){
		
		user.setUser_id(user.getUser_id());
		user.setUser_pwd(user.getUser_pwd());
		user.setUser_index(user.getUser_index());
		User result = userService.login(user);
		
		if(result != null) {
			session.setAttribute("loginCheck", true);
			session.setAttribute("id", user.getUser_id());
			session.setAttribute("user_index", user.getUser_index());
			return "redirect:/index";
		}else {
			return "redirect:/login";
		}
	
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logoutProcess(HttpSession session) {
                            
        session.setAttribute("loginCheck",null);
        session.setAttribute("id",null);
        session.setAttribute("user_index", session);
        
        return "redirect:/index";
    }
	
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String member_id) throws Exception{
				
		int result = userService.idCheck(member_id);
		
			if(result != 0) {
				return "fail"; // 중복 아이디가 존재 
			}
			else { 
				return "success"; // 중복 아이디 x 
			}
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute User user) {
		int result = userService.joinUser(user);
		
		if(result == 1)
			return "redirect:/login";
		else
			return "redirect:/signUp";
	}
	
	@PostMapping
	public void addUser(@RequestBody User user) {
		userService.joinUser(user);
	}
	
}

package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.web.service.UserService;
import com.web.vo.UserVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//로그인폼
	@GetMapping("/loginForm")
	public String loginForm() {
		
		return "/user/loginForm";
		
	}
	
	//로그인
	@GetMapping("/login")
	public String login(UserVo userVo, HttpSession session) throws Exception{

		userVo = userService.login(userVo);
		
		/* 세션에 로그인 회원 정보 저장 */
		if(userVo != null) {
			session.setAttribute("authUser", userVo);
			return "redirect:/main";
		}else {
			return "/user/loginForm";
		}

	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(UserVo userVo, HttpSession session) {
		
		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/main";
		
	}

}

package com.backproj.mini.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.backproj.mini.dto.Member;
import com.backproj.mini.service.MainService;


@Controller
public class MainController {
	@Autowired
	HttpSession session;
	
	@Autowired
	MainService ms; 
	
	 @GetMapping(value="/") 
	 public String main() { 
		 return "main"; 
		 }
	@GetMapping(value="/login")
	public String login() {		
		return "login";
	}
	@GetMapping(value="/signup")
	public String signup() {		
		return "signup";
	}
	@GetMapping(value="/subpage")
	public String subpage() {
		String id = (String)session.getAttribute("id");
		if(id == null) {
			return "main";
		}
		return "subpage";
	}
//	@GetMapping(value="/mypage")
//	public String mypage() {		
//		return "mypage";
//	}
	
	/*
	 * @PostMapping("/login") public ModelAndView login(@RequestParam String
	 * id, @RequestParam String password) { ModelAndView mav = new
	 * ModelAndView("main");
	 * 
	 * try { boolean isLogin = ms.login(id, password); if(isLogin) {
	 * System.out.println("로그인 성공"); mav.setViewName("main"); } else {
	 * System.out.println("로그인 실패"); mav.setViewName("login"); } } catch (Exception
	 * e) { e.printStackTrace(); } return mav;
	 * 
	 * }
	 */
	@PostMapping("/login") 
	public ModelAndView login(@RequestParam String id, @RequestParam String password) {
		ModelAndView mav = new ModelAndView("login");
		try {
			boolean islogin = ms.login(id, password);
			if(islogin) {
				session.setAttribute("id", id);
				mav.setViewName("main");
			} else {
				mav.addObject("result", "로그인 실패");
			}
			
		} catch (Exception e) {
			mav.addObject("result", "로그인 실패(아이디 또는 비밀번호를 확인해주세요)");
			
		}
		return mav;
	}
	@PostMapping(value="/signup")
	public String join(@ModelAttribute Member mem) {
		try {
			ms.signup(mem);
			return "main";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main";
	}
	@RequestMapping(value = "/logout" )
	public String logout(HttpServletRequest request) {
		try {
			session.removeAttribute("id");			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main";
	}

}

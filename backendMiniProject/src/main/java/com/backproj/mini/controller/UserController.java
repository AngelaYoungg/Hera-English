package com.backproj.mini.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.backproj.mini.dto.User;
import com.backproj.mini.service.UserService;

@Controller
public class UserController {
	@Autowired
	HttpSession session;

	@Autowired
	UserService us;

	@PostMapping(value = "/subpage")
	public String join(@ModelAttribute User user, Model model) {
		try {
			model.addAttribute("id", session.getAttribute("id"));
			us.subpage(user);

			return "userinfo";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "userinfo";
	}

	/*
	 * @GetMapping("/mypage") public String list (Model model, Object user) throws
	 * Exception { List<User> users = us.allUserInfo();
	 * model.addAttribute("users",user); return "mypage"; }
	 */
	@GetMapping("/mypage")
	public String mypage() {
		return "mypage";
	}

	@PostMapping("/alluserinfo")
	public ModelAndView alluserinfo() {
		ModelAndView mav = new ModelAndView("alluserinfo");
		
		List<User> users = null;
		try {
			users = us.allUserInfo();
			mav.addObject("users", users);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
}

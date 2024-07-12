package com.yoon.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yoon.a02_service.UserService;
import com.yoon.a04_vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/login2")
	public String login2() {
		return "login2";
	}
	
	@PostMapping(value = "/login2", consumes = "application/x-www-form-urlencoded")
    public ModelAndView login(@RequestParam String userId, @RequestParam String userNm) {
        ModelAndView mav = new ModelAndView();
        if (userService.login(userId, userNm)) {
            mav.setViewName("success");
            mav.addObject("userId", userId);
        } else {
            mav.setViewName("login2");
            mav.addObject("error", "Invalid User ID or User Name");
        }
        return mav;
    }
	
	@PostMapping(value = "/login", consumes = "application/x-www-form-urlencoded")
    public ModelAndView login(@ModelAttribute UserVO userVO) {
        ModelAndView mav = new ModelAndView();
        if (userService.login(userVO.getUserId(), userVO.getUserNm())) {
            mav.setViewName("success");
            mav.addObject("userId", userVO.getUserId());
        } else {
            mav.setViewName("login");
            mav.addObject("error", "Invalid User ID or User Name");
        }
        return mav;
    }
}

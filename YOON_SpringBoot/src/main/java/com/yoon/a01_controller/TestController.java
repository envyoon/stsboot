package com.yoon.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoon.a02_service.TestService;
import com.yoon.a04_vo.TestVO;

@Controller
public class TestController {
	
	@Autowired
	private TestService service;
	
	@RequestMapping("/test.do")
	public String test(TestVO sch, Model d) {
		
		d.addAttribute("TestVO", service.getTestVO(sch));
		
		
		return "test";
	}
}

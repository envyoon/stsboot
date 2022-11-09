package com.yoon.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.yoon.a02_service.EmpService;
import com.yoon.a04_vo.Emp;



@Controller
@RequestMapping("/")
public class EmpController {
	
	@Autowired
	private EmpService service;
	
	@RequestMapping(value="/ex")
	public String ex() {
		return "home";
	}
	
	
	@RequestMapping(value="/empList")
	public String empList(Emp sch, Model d) {
		
		d.addAttribute("emplist", service.getEmpList(sch));
		
		return "empList";
	}
	
	/**
	@RequestMapping("/insertEmp.do")
	public String insertEmp(Emp ins, Model d){
		
		d.addAttribute("proc","등록완료");
		System.out.println("날짜:"+ins.getHiredateS());
		service.insertEmp(ins);
		return "WEB-INF\\views\\a02_mvc\\a01_empList.jsp"; // 등록 후, 처리해야 할 화면 호출..
	}	
	// emp.do?empno=7780
	@RequestMapping("/emp.do")
	public String getEmpno(@RequestParam("empno") int empno, Model d){
		System.out.println("상세 empno:"+empno);
		d.addAttribute("emp", service.getEmp(empno));
		return "WEB-INF\\views\\a02_mvc\\a02_empDetail.jsp";
	}	
	// uptEmp.do?empno=7080&ename=홍길동&job=대리
	@RequestMapping("/uptEmp.do")
	public String uptEmp(Emp upt, Model d){
		d.addAttribute("proc","수정완료");
		service.uptEmp(upt);
		// 수정된 내용을 기준으로 상세화면에 다시 확인하여야 하기에 아래와 같은 형식으로
		// forward 처리한다. : 위에 선언된 controller로 호출..
		return "WEB-INF\\views\\a02_mvc\\a02_empDetail.jsp";
	}
	@RequestMapping("/delEmp.do")
	public String delEmp(@RequestParam("empno") int empno, Model d){
		d.addAttribute("proc","삭제되었습니다");
		service.delEmp(empno);
		return "WEB-INF\\views\\a02_mvc\\a02_empDetail.jsp";
	}
	*/
}

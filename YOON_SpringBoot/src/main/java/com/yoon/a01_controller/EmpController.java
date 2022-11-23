package com.yoon.a01_controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
	
	// 리스트 출력
	@RequestMapping(value="/empList")
	public String empList(Emp sch, Model d) {
		
		d.addAttribute("emplist", service.getEmpList(sch));
		
		
		return "emp/empList";
	}
	
	
	// 추가 페이지
	@RequestMapping(value="/empInsertPage")
	public String insertPage() {
		
		return "emp/empInsert";
	}
	
	
	@RequestMapping(value="/empInsert")
	public String insertEmp(Emp ins, Model d){
		
		d.addAttribute("proc","등록완료");
		service.insertEmp(ins);
		return "emp/empInsert"; 
	}
	
	
	// emp.do?empno=7780
	@RequestMapping(value="/empDetail")
	public String getEmpno(@RequestParam("empno") int empno, Model d){
		System.out.println("상세 empno:"+empno);
		d.addAttribute("emp", service.getEmp(empno));
		return "emp/empDetail";
	}
	
	
	// uptEmp.do?empno=7080&ename=홍길동&job=대리
	@RequestMapping(value="/uptEmp")
	public String uptEmp(Emp upt, Model d){
		d.addAttribute("proc","수정완료");
		service.uptEmp(upt);
		 
		// 수정된 내용을 기준으로 상세화면에 다시 확인하여야 하기에 아래와 같은 형식으로
		// forward 처리한다. : 위에 선언된 controller로 호출..
		return "emp/empDetail";
	}
	
	/**
	@RequestMapping("/delEmp.do")
	public String delEmp(@RequestParam("empno") int empno, Model d){
		d.addAttribute("proc","삭제되었습니다");
		service.delEmp(empno);
		return "WEB-INF\\views\\a02_mvc\\a02_empDetail.jsp";
	}
	*/
}

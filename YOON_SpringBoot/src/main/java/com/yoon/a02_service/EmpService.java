package com.yoon.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import com.yoon.a03_dao.EmpDao;
import com.yoon.a04_vo.Emp;


@Service
public class EmpService {

	@Autowired
	private EmpDao dao;
	
	public ArrayList<Emp> getEmpList(Emp sch) {
		
		return dao.getEmpList(sch);
	}
}

package com.yoon.a03_dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.yoon.a04_vo.Emp;

@Mapper
@Repository
public interface EmpDao {
	
	// 리스트 출력
	public ArrayList<Emp> getEmpList(Emp sch);
	
	/**
	// Create
	public String insertEmp(Emp ins);
	*/
	
	// 상세정보
	public Emp getEmp(int empno);
	
	/**
	public void uptEmp(Emp upt);
	public void delEmp(int empno);
	*/
}

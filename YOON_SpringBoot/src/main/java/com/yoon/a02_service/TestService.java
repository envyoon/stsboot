package com.yoon.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoon.a03_dao.TestDao;
import com.yoon.a04_vo.TestVO;

@Service
public class TestService {

	@Autowired
	private TestDao dao;
	
	public ArrayList<TestVO> getTestVO(TestVO sch){
		return dao.getTestVO(sch);
	}
}

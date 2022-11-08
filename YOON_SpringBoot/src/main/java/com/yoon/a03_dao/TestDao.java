package com.yoon.a03_dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.yoon.a04_vo.*;

@Repository
@Mapper
public interface TestDao {
	
	public ArrayList<TestVO> getTestVO(TestVO sch);
}

package com.yoon.a03_dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yoon.a04_vo.UserVO;

@Mapper
@Repository
public interface UserDAO {
    public UserVO getUserByUserId(String userId);
}

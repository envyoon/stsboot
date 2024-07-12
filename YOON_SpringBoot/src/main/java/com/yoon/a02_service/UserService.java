package com.yoon.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yoon.a03_dao.UserDAO;
import com.yoon.a04_vo.UserVO;

@Service
public class UserService {

	@Autowired
	private UserDAO userDAO;
	
	public boolean login(String userId, String userNm) {
        UserVO user = userDAO.getUserByUserId(userId);
        return user != null && user.getUserNm().equals(userNm);
    }
}

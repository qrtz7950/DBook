package kr.co.project.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.login.dao.LoginDAOImpl;
import kr.co.project.login.vo.LoginVO;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDAOImpl dao;
	
	@Override
	public LoginVO Login(LoginVO user) {
		
		if(dao.overlapCheck(user)) {
			dao.updateUserInfo(user);
			user = dao.login(user);
		} else {
			dao.signIn(user);
		}
		
		return user;
	}
	
}

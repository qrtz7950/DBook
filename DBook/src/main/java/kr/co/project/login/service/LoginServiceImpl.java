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
		
		System.out.println("Loginservice 진입");
		
		if(dao.overlapCheck(user)) {
			dao.updateUserInfo(user);
		} else {
			dao.signIn(user);
		}
		
		return user;
	}
	
}

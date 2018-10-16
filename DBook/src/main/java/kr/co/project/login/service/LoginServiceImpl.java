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
		user = dao.login(user);
		return user;
	}
	
	@Override
	public LoginVO kakaoLogin(LoginVO user) {
		
		if(dao.overlapCheck(user)) {
			dao.updateUserInfo(user);
			user = dao.kakaoLogin(user);
		} else {
			dao.kakaoSignIn(user);
		}
		
		return user;
	}
	@Override
	public LoginVO addUserInfo(LoginVO user) {
		
		dao.addUserInfo(user);
		user = dao.login(user);
		return user;
	}
	
	@Override
	public LoginVO signIn(LoginVO user) {
		
		if(dao.overlapCheck(user)) {
			user = null;
		} else {
			dao.signIn(user);
			user = dao.login(user);
		}
		return user;
	}

	@Override
	public String idDupCheck(LoginVO user) {
		
		String idDupCheck = null;
		
		if(dao.overlapCheck(user)) {
			idDupCheck = "중복된 ID입니다";
		} else {
			idDupCheck = "사용하셔도 좋은 ID입니다";
		}
		
		return idDupCheck;
	}
	
	
	
}

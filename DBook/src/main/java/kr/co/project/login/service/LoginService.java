package kr.co.project.login.service;

import kr.co.project.login.vo.LoginVO;

public interface LoginService {
	
	/**
	 * 카카오 api를 이용한 로그인을 위한 method
	 * 가입되어 있지 않은 유저일 경우 DB에 정보를 추가한다
	 */
	
	public LoginVO Login(LoginVO user);

}

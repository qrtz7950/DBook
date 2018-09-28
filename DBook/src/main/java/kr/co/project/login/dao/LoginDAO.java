package kr.co.project.login.dao;

import kr.co.project.login.vo.LoginVO;

public interface LoginDAO {

	/**
	 * 카카오 api를 이용해 로그인한 사용자의 회원가입을 위한 메소드
	 * @param user
	 */
	public void signIn(LoginVO user);
	
	/**
	 * 이미 가입되어 있는 유저인지 체크
	 * @param user
	 * @return
	 */
	public boolean overlapCheck(LoginVO user);
	
	/**
	 * 파라미터의 정보대로 회원의 정보를 수정
	 * @param user
	 */
	public void updateUserInfo(LoginVO user);
	
	public LoginVO login(LoginVO user);
	
}

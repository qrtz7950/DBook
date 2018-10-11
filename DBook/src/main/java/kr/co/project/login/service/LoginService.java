package kr.co.project.login.service;

import kr.co.project.login.vo.LoginVO;

public interface LoginService {
	
	/**
	 * 카카오 api를 이용한 로그인을 위한 method
	 * 가입되어 있지 않은 유저일 경우 DB에 정보를 추가한다
	 */
	
	public LoginVO Login(LoginVO user);

	/**
	 * 메인에서 추가로 입력된 추가정보를 매개변수 객체의 id에 추가
	 * @param user
	 * @return
	 */
	
	public LoginVO addUserInfo(LoginVO user);

	/**
	 * 일반 유저 회원가입 썸네일, 프로필이미지, 닉네임 등의 정보는 제외된다
	 * @param user
	 * @return
	 */
	public LoginVO signIn(LoginVO user);
	
	/**
	 * 카카오 채널링 유저 로그인
	 * @param user
	 * @return
	 */
	public LoginVO kakaoLogin(LoginVO user);

}

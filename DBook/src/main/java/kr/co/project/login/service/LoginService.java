package kr.co.project.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.login.dao.LoginDAO;
import kr.co.project.login.vo.LoginVO;

@Service
public class LoginService{

	@Autowired
	private LoginDAO dao;
	
	/**
	 * 카카오 api를 이용한 로그인을 위한 method
	 * 가입되어 있지 않은 유저일 경우 DB에 정보를 추가한다
	 */
	public LoginVO Login(LoginVO user) {
		user = dao.login(user);
		return user;
	}
	
	/**
	 * 카카오 채널링 유저 로그인
	 * @param user
	 * @return
	 */
	public LoginVO kakaoLogin(LoginVO user) {
		
		if(dao.overlapCheck(user)) {
			dao.updateUserInfo(user);
			user = dao.kakaoLogin(user);
		} else {
			dao.kakaoSignIn(user);
		}
		
		return user;
	}
	
	/**
	 * 메인에서 추가로 입력된 추가정보를 매개변수 객체의 id에 추가
	 * @param user
	 * @return
	 */
	public LoginVO addUserInfo(LoginVO user) {
		
		dao.addUserInfo(user);
		user = dao.kakaoLogin(user);
		return user;
	}
	
	/**
	 * 일반 유저 회원가입 썸네일, 프로필이미지, 닉네임 등의 정보는 제외된다
	 * @param user
	 * @return
	 */
	public LoginVO signIn(LoginVO user) {
		
		if(dao.overlapCheck(user)) {
			user = null;
		} else {
			dao.signIn(user);
			user = dao.login(user);
		}
		return user;
	}

	/**
	 * ajax로 구현된 id 중복체크를 위해 스트링을 반환하는 리스폰스 메소드 
	 * @param id
	 * @return
	 */
	public String idDupCheck(LoginVO user) {
		
		String idDupCheck = null;
		
		if(dao.overlapCheck(user)) {
			idDupCheck = "중복된 ID입니다";
		} else {
			idDupCheck = "사용하셔도 좋은 ID입니다";
		}
		
		return idDupCheck;
	}
	
	// user의 interest 여부 확인
	public int check_interest(String id, String book_id) {
		return dao.check_interest(id, book_id);
	}
	
	// 상황에 따라 interest 입력/삭제
	public void manage_interest(String id, String interest, String book_id) {
		if(interest.equals("yes")) {
			dao.insert_interest(id, book_id);
		}else if(interest.equals("no")) {
			dao.delete_interest(id, book_id);
		}
		
		return;
	}
	
	
	
}

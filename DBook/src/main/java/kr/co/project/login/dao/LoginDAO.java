package kr.co.project.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.login.vo.LoginVO;
import kr.co.project.review.vo.ReviewVO;

@Repository
public class LoginDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/**
	 * 카카오 api를 이용해 로그인한 사용자의 회원가입을 위한 메소드
	 * @param user
	 */
	public void signIn(LoginVO user) {
		sqlSessionTemplate.insert("kr.co.project.login.dao.LoginDAO.signIn", user);
	}
	
	/**
	 * 카카오 채널링 유저 회원가입
	 * @param user
	 */
	public void kakaoSignIn(LoginVO user) {
		sqlSessionTemplate.insert("kr.co.project.login.dao.LoginDAO.kakaoSignIn", user);
	}

	/**
	 * 일반 사용자용 로그인
	 * @param user
	 * @return
	 */
	public LoginVO login(LoginVO user) {
		user = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.login", user);
		return user;
	}

	/**
	 * 이미 가입되어 있는 유저인지 체크
	 * @param user
	 * @return
	 */
	public boolean overlapCheck(LoginVO user) {
		LoginVO isOverlap = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.overlapCheck", user);
		if(isOverlap == null) {
			return false;
		} else {
			return true;
		}
	}
	
	/**
	 * 파라미터의 정보대로 회원의 정보를 수정
	 * @param user
	 */
	public void updateUserInfo(LoginVO user) {
		sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.update", user);
	}

	/**
	 * 카카오 채널링 유저 로그인
	 * @param user
	 * @return
	 */
	public LoginVO kakaoLogin(LoginVO user) {
		user = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.kakaoLogin", user);
		return user;
	}

	/**
	 * 추가로 정보를 입력한 채널링 유저의 정보추가를 위한 메소드
	 * @param user
	 */
	public void addUserInfo(LoginVO user) {
		user = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.updateAll", user);
	}

	public int check_interest(String id, String book_id) {
		ReviewVO review = new ReviewVO();
		review.setId(id);
		review.setBook_id(book_id);
		return sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.check_interest", review);
	}
}

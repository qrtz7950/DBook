package kr.co.project.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.login.vo.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void signIn(LoginVO user) {
		sqlSessionTemplate.insert("kr.co.project.login.dao.LoginDAO.signIn", user);
	}

	@Override
	public boolean overlapCheck(LoginVO user) {
		LoginVO isOverlap = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.overlapCheck", user);
		if(isOverlap == null) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public void updateUserInfo(LoginVO user) {
		sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.update", user);
	}

}

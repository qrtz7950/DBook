package kr.co.project.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.mypage.vo.MinBookVO;
import kr.co.project.mypage.vo.MypageVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<MinBookVO> bookmarkBooks(String id) {
		return sqlSessionTemplate.selectList("kr.co.project.mypage.dao.MypageDAO.bookmarks", id);
	}

	public List<MypageVO> reviewListById(String id) {
		return sqlSessionTemplate.selectList("kr.co.project.mypage.dao.MypageDAO.reviews", id);
	}

	public MypageVO getCookieBook(String book_id) {
		return sqlSessionTemplate.selectOne("kr.co.project.mypage.dao.MypageDAO.caches", book_id);
	}

}

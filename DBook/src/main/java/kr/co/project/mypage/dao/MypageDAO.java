package kr.co.project.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.mypage.vo.MinBookVO;
import kr.co.project.review.vo.ReviewVO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<MinBookVO> bookmarkBooks(String id) {
		List<MinBookVO> books = sqlSessionTemplate.selectList("kr.co.project.mypage.dao.MypageDAO.bookmarks", id);
		return books;
	}

	public List<ReviewVO> reviewListById(String id) {
		List<ReviewVO> reviews = sqlSessionTemplate.selectList("kr.co.project.mypage.dao.MypageDAO.reviews", id);
		return reviews;
	}

}

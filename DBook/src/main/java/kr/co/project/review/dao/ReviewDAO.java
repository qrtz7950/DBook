package kr.co.project.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.review.vo.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void writeReview(ReviewVO review) {
		sqlSessionTemplate.insert("kr.co.project.review.dao.ReviewDAO.writeReview", review);
	}
	
	public List<ReviewVO> reviewListByBook_id(String book_id) {
		List<ReviewVO> reviews = sqlSessionTemplate.selectList(book_id);
		
		for(ReviewVO review : reviews) {
			System.out.println(review);
		}
		return reviews;
	}
	
}

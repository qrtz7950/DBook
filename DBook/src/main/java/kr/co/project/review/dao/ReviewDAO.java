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
	
	public ReviewVO[] reviewListByBook_id(String book_id) {
		List<ReviewVO> list = sqlSessionTemplate.selectList(book_id);
		ReviewVO[] reviews = list.toArray(new ReviewVO[list.size()]);
		
		System.out.println(reviews);
		
		return reviews;
	}
	
}

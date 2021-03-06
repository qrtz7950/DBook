package kr.co.project.review.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.review.vo.ReviewVO;
import kr.co.project.review_reaction.vo.ReviewReactionVO;
import kr.co.project.usercorrelation.vo.UserCorrelationVO;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 리뷰 입력
	public void writeReview(ReviewVO review) {
		sqlSessionTemplate.insert("kr.co.project.review.dao.ReviewDAO.writeReview", review);
	}
	
	// 리뷰 삭제
	public void deleteReview(ReviewVO review) {
		sqlSessionTemplate.delete("kr.co.project.review.dao.ReviewDAO.deleteReview", review);
	}
	
	// book_id로 해당 책 리뷰 조회
	public List<ReviewVO> reviewListByBook_id(String book_id) {
		List<ReviewVO> reviews = sqlSessionTemplate.selectList("kr.co.project.review.dao.ReviewDAO.reviewListByBook_id", book_id);
		return reviews;
	}

	public void addUserRating(ReviewVO review) {
		sqlSessionTemplate.insert("kr.co.project.review.dao.ReviewDAO.addUserRating", review);
	}
	
	// book_id로 해당 책 평점 조회
	public List<Integer> book_avg_rating(String book_id) {
		List<Integer> rating_points = sqlSessionTemplate.selectList("kr.co.project.review.dao.ReviewDAO.book_avg_rating", book_id);
		return rating_points;
	}
	
	
	
	//----------------------------------------------review_reaction 관련----------------------------------------
	
	/**
	 * review_reaction 확인<br>
	 * -1 : 없음<br>
	 * 0 : bad<br>
	 * 1 : good
	 * @param reviewReaction
	 * @return int
	 */
	public int check_review_reaction(ReviewReactionVO reviewReaction) {
		int check = -1;
		ReviewReactionVO val = sqlSessionTemplate.selectOne("kr.co.project.review.dao.ReviewDAO.check_review_reaction", reviewReaction);
		
		if(val != null) {
			if(val.getGood_or_bad() == 1) {
				check = 1;
			}else {
				check = 0;
			}
		}
		
		return check;
	}
	
	// review_reaction 입력
	public void insertReviewReaction(ReviewReactionVO reviewReaction) {
		sqlSessionTemplate.insert("kr.co.project.review.dao.ReviewDAO.insert_review_reaction", reviewReaction);
		reviewGoodBadCalc(reviewReaction.getReview_no());
	}
	
	// review_reaction 수정
	public void updateReviewReaction(ReviewReactionVO reviewReaction) {
		sqlSessionTemplate.update("kr.co.project.review.dao.ReviewDAO.update_review_reaction", reviewReaction);
		reviewGoodBadCalc(reviewReaction.getReview_no());
	}
	
	// review_no로 reaction(good / bad) 수 조회
	public HashMap<String, Integer> viewReactionNum(ReviewReactionVO reviewReaction) {
		HashMap<String, Integer> reaction = new HashMap<>();
		ReviewReactionVO a = reviewReaction;
		a.setGood_or_bad(1);
		int good = sqlSessionTemplate.selectOne("kr.co.project.review.dao.ReviewDAO.view_reaction_num", a);
		a.setGood_or_bad(0);
		int bad = sqlSessionTemplate.selectOne("kr.co.project.review.dao.ReviewDAO.view_reaction_num", a);
		reaction.put("good", good);
		reaction.put("bad", bad);
		
		return reaction;
	}
	
	// review 테이블 good bad 값 review_reaction 테이블 대조해서 설정
	public void reviewGoodBadCalc(int review_no) {
		sqlSessionTemplate.update("kr.co.project.review.dao.ReviewDAO.reviewGoodBadCalc", review_no);
	}
	
	// review_no로 book_id 조회
	public String getBookIdByReviewNo(int review_no) {
		return sqlSessionTemplate.selectOne("kr.co.project.review.dao.ReviewDAO.getBookIdByReviewNo", review_no);
	}
	
	//--------------------------------------------------------------------------------------------------------
	
	//----------------------------------------------초기 추천을 위한 유저 상관도 테이블 관련----------------------------------------
	
	// 자신이 평가한 책 조회
	public List<ReviewVO> myRatingBooks(String id) {
		List<ReviewVO> myRatingBookList = sqlSessionTemplate.selectList("kr.co.project.review.dao.ReviewDAO.myRatingBooks", id);
		return myRatingBookList;
	}
	
	// 해당책 평가했던 id들 조회
	public List<String> compareIds(String id, String book_id) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("book_id", book_id);
		
		List<String> compareIdList = sqlSessionTemplate.selectList("kr.co.project.review.dao.ReviewDAO.compareIds", map);
		return compareIdList;
	}

	public void addUserCorrelation(List<UserCorrelationVO> resultList) {
		for(UserCorrelationVO result : resultList) {
			sqlSessionTemplate.insert("kr.co.project.review.dao.ReviewDAO.addUserCorrelation", result);
		}
	}

	public void deleteUserCorrelation(String id) {
		sqlSessionTemplate.delete("kr.co.project.review.dao.ReviewDAO.deleteUserCorrelation", id);
	}
	
}
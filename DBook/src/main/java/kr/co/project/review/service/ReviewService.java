package kr.co.project.review.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.review.dao.ReviewDAO;
import kr.co.project.review.vo.ReviewVO;
import kr.co.project.review_reaction.vo.ReviewReactionVO;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO dao;
	
	// 리뷰 입력
	public void writeReview(ReviewVO review) {
		dao.writeReview(review);
	}
	
	// book_id로 해당 책 리뷰 조회
	public JSONObject reviewListByBook_id(String book_id) {
		
		List<ReviewVO> review_list = dao.reviewListByBook_id(book_id);
		JSONObject reviews = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			for(int i=0; i<review_list.size(); i++) {
				JSONObject j = new JSONObject();
				j.put("review_no", review_list.get(i).getReview_no());
				j.put("id", review_list.get(i).getId());
				j.put("nickname", review_list.get(i).getNickname());
				j.put("book_id", review_list.get(i).getBook_id());
				j.put("rating", review_list.get(i).getRating());
				j.put("content", review_list.get(i).getContent());
				j.put("good", review_list.get(i).getGood());
				j.put("bad", review_list.get(i).getBad());
				j.put("review_reg_date", review_list.get(i).getReview_reg_date());
				jArray.add(j);
			}
			
			reviews.put("name", "reviews");
			reviews.put("items", jArray);
			
			System.out.println(reviews.toString());
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return reviews;
	}
	
	public void addUserRating(List<ReviewVO> list) {
		for(ReviewVO review : list) {
			dao.addUserRating(review);
		}
	}

	// book_id로 해당 책 평점 조회 후 계산
	public String book_avg_rating(String book_id) {
		List<Integer> rating_points = dao.book_avg_rating(book_id);
		float avg_rating = 0;
		
		for(int rating_point : rating_points) {
			avg_rating += rating_point;
		}
		
		if(avg_rating != 0) {
			avg_rating /= rating_points.size();
		}
		
		String avg_rating_str = String.format("%.2f", avg_rating);
		
		return avg_rating_str;
	}
	
	// review_reaction 확인 후 review good/bad 처리
	public JSONObject review_react(ReviewReactionVO reviewReaction) {
		int check = dao.check_review_reaction(reviewReaction);	// -1: 없음 / 0: bad / 1: good
		
		if(check == -1) {
			dao.insertReviewReaction(reviewReaction);
		}else {
			if(reviewReaction.getGood_or_bad() != check) {
				dao.updateReviewReaction(reviewReaction);
			}
		}
		
		HashMap<String, Integer> reaction = new HashMap<>();
		reaction = dao.viewReactionNum(reviewReaction);
		
		JSONObject reactions = new JSONObject();
		JSONArray jArray = new JSONArray();
		
		JSONObject j = new JSONObject();
		j.put("good", reaction.get("good"));
		jArray.add(j);
		
		j = new JSONObject();
		j.put("bad", reaction.get("bad"));
		jArray.add(j);
		
		reactions.put("name", "reaction");
		reactions.put("items", jArray);
		
		return reactions;
	}
	
}

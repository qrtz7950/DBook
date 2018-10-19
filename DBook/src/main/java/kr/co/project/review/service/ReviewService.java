package kr.co.project.review.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.review.dao.ReviewDAO;
import kr.co.project.review.vo.ReviewVO;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO dao;
	
	public void writeReview(ReviewVO review) {
		dao.writeReview(review);
	}
	
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
	
}

package kr.co.project.review.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.review.dao.ReviewDAO;
import kr.co.project.review.vo.ReviewVO;
import kr.co.project.review_reaction.vo.ReviewReactionVO;
import kr.co.project.usercorrelation.vo.UserCorrelationVO;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO dao;
	
	// 리뷰 입력
	public void writeReview(ReviewVO review) {
		dao.deleteReview(review);
		dao.writeReview(review);
		calcUserCorrelation(review.getId());
	}
	
	// 리뷰 삭제
	public void deleteReview(ReviewVO review) {
		dao.deleteReview(review);
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
	
	// 로그인 된 아이디와 띄어지는 review_no들을 대조하여 reaction 여부 확인
	public JSONObject reaction_check(String id, int[] review_no_list) {
		String book_id = dao.getBookIdByReviewNo(review_no_list[0]);
		ReviewReactionVO reviewReaction = new ReviewReactionVO();
		reviewReaction.setId(id);
		
		JSONObject reactions = new JSONObject();
		JSONArray jArray = new JSONArray();
		
		for(int review_no : review_no_list) {
			JSONObject j = new JSONObject();
			
			reviewReaction.setReview_no(review_no);
			int check = dao.check_review_reaction(reviewReaction);	// -1: 없음 / 0: bad / 1: good
			j.put("reaction", check);
			jArray.add(j);
		}
		reactions.put("name", "reactions");
		reactions.put("items", jArray);
		
		return reactions;
	}
	
	// 가입후 평가페이지에서 처음으로 평가시 초기 유저 상관도 테이블 계산 후 입력 -> 시간나면 피어슨 상관 계수로 변경
	public void calcUserCorrelation(String id) {
		// 이전 correlation table 기준 유저 삭제
		dao.deleteUserCorrelation(id);
		
		// 자신이 평가한 책 목록 뽑기
		List<ReviewVO> myRatingBookList = dao.myRatingBooks(id);
		System.out.println(myRatingBookList.toString());
		
		// 자신이 평가한 책을 평가한 다른 유저 id list 뽑기
		List<String> compareIdList = new ArrayList<>();
		for(ReviewVO myRatingBook : myRatingBookList) {
			List<String> temp1 = dao.compareIds(id, myRatingBook.getBook_id());
			if(temp1 != null) {
				compareIdList.addAll(temp1);				
			}
		}
		// id list 중복 id 제거
		HashSet<String> removeSame = new HashSet<>(compareIdList);
		compareIdList.clear();
		compareIdList = new ArrayList<>(removeSame);
		System.out.println(compareIdList.toString());
		
		// 자신과 id list에서 하나씩 뽑아낸 id와 공통 평가한 책의 평점의 차의 합의 평균을 구함
		List<UserCorrelationVO> resultList = new ArrayList<>();
		float distance;
		for(String compareId : compareIdList) {
			distance = 0;
			int count = 0;
			List<ReviewVO> compareRatingBookList = dao.myRatingBooks(compareId);
			for(ReviewVO myRatingBook : myRatingBookList) {
				for(ReviewVO compareRatingBook : compareRatingBookList) {
					if(myRatingBook.getBook_id().equals(compareRatingBook.getBook_id())) {
						distance += Math.pow(myRatingBook.getRating() - compareRatingBook.getRating(), 2);
						count++;
					}
				}
				if(count != 0) {
					// float형 소수점 자릿수로 오류 날수도 있음 오류나면 여기 보세요 ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
					distance /= count;
				}
			}
			if(count > 2) {		// 겹치는 데이터의 양 지정 (높을 수록 신뢰도 오르지만, 데이터가 적으면 다 걸러짐)
				UserCorrelationVO ucvo = new UserCorrelationVO(id, compareId, distance);
				resultList.add(ucvo);
			}
		}
		
		AscendingObj ascending = new AscendingObj();
		Collections.sort(resultList, ascending);
		
		System.out.print("오름차순 - ");
        for (UserCorrelationVO a : resultList) {
            System.out.print(a.getCompare_id() + ":" + a.getDistance() + " ");
        }
        
        System.out.println();
        System.out.print("5개 - ");
        if(resultList.size() > 5) {
        	resultList.subList(5,resultList.size()).clear();
        }
        for (UserCorrelationVO a : resultList) {
            System.out.print(a.getCompare_id() + ":" + a.getDistance() + " ");
        }
        
        dao.addUserCorrelation(resultList);
	}
	class AscendingObj implements Comparator<UserCorrelationVO>{
		@Override
		public int compare(UserCorrelationVO o1, UserCorrelationVO o2) {
			int r;
			if(o1.getDistance() == o2.getDistance()) {
				r = 0;
			}else if(o1.getDistance() > o2.getDistance()) {
				r = 1;
			}else {
				r = -1;
			}
			return r;
		}
	}
}

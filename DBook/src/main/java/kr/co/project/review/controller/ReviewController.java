package kr.co.project.review.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.project.login.vo.LoginVO;
import kr.co.project.review.service.ReviewService;
import kr.co.project.review.vo.ReviewVO;
import kr.co.project.review_reaction.vo.ReviewReactionVO;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 입력
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	@ResponseBody
	public void reviewInput(@ModelAttribute ReviewVO review) {
		System.out.println("reviewInput()진입");
		review.setContent(review.getContent().replace(System.getProperty("line.separator"), "<br>"));
		System.out.println(review);
		
		reviewService.writeReview(review);
		
		return;
	}
	
	// book_id로 해당 책 리뷰 조회
	@ResponseBody
	@RequestMapping(value="/bookDetail_review.do", method = RequestMethod.POST)
	public JSONObject bookDetail_review(@RequestParam(value="book_id") String book_id) {
		System.out.println("bookDetail_review() 진입");
		
		JSONObject reviews = reviewService.reviewListByBook_id(book_id);
		
		return reviews;
	}
	
	@ResponseBody
	@RequestMapping(("/ratingSubmit.do"))
	public void ratingSubmit(@RequestParam String[] bookId,@RequestParam int[] bookRating, HttpSession session) {
		System.out.println("ratingSubmit()진입");
		
		List<ReviewVO> list = new ArrayList<>(); 
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		System.out.println(bookId.length);
		System.out.println(bookRating.length);
		
		for(int i = 0; i<10; i++) {
			ReviewVO mp = new ReviewVO();
			System.out.println("bookId[" + i + "] : " + bookId[i]);
			System.out.println("bookRating[" + i + "] : " + bookRating[i]);
			mp.setBook_id(bookId[i]);
			mp.setRating(bookRating[i]);
			mp.setId(user.getId());
			list.add(mp);
		}
		
		reviewService.addUserRating(list);
		// 가입후 평가페이지에서 처음으로 평가시 초기 유저 상관도 테이블 계산 후 입력
		reviewService.calcRecommend(user.getId());
		
		return;
	}
	
	// book_id로 해당 책 평점 평균 조회
	@ResponseBody
	@RequestMapping(value="/avg_rating.do", method = RequestMethod.POST)
	public String avg_rating(@RequestParam(value="book_id") String book_id) {
		System.out.println("avg_rating() 진입");
		
		String rating_point  = reviewService.book_avg_rating(book_id);
		
		return rating_point;
	}
	
	// review_no, id, good_or_bad 로 리뷰 good/bad 선택 실행
	@ResponseBody
	@RequestMapping(value="/review_react.do", method = RequestMethod.POST)
	public JSONObject review_react(@ModelAttribute ReviewReactionVO reviewReaction) {
		System.out.println("review_react() 진입");
		//System.out.println(reviewReaction);
		
		JSONObject reaction = reviewService.review_react(reviewReaction);
		
		return reaction;
	}
	
	// 로그인 된 아이디와 띄어지는 review_no들을 대조하여 reaction 여부 확인
	@ResponseBody
	@RequestMapping(value="/reaction_border.do", method = RequestMethod.POST)
	public JSONObject reaction_border(@RequestParam int[] review_no_list, HttpSession session) {
		System.out.println("reaction_border() 진입");
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		String id = user.getId();
		
		JSONObject reactions = reviewService.reaction_check(id, review_no_list);
		
		return reactions;
	}
	
}

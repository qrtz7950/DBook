package kr.co.project.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.review.service.ReviewService;
import kr.co.project.review.vo.ReviewVO;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	@ResponseBody
	public void reviewInput(@ModelAttribute ReviewVO review) {
		
		System.out.println("reviewInput()진입");
		System.out.println(review);
		
		reviewService.writeReview(review);
		
		return;
	}
	
	@RequestMapping(value="/bookDetail_review.do")
	public ModelAndView bookDetail_review(HttpServletRequest request) {
		System.out.println("bookDetail_review() 진입");
		
		String book_id = request.getAttribute("book_id").toString();
		List<ReviewVO> reviews = reviewService.reviewListByBook_id(book_id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviews", reviews);
		mav.setViewName("/bookDetail/detail");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/bookDetail_review2.do", method = RequestMethod.POST)
	public JSONObject bookDetail_review2(@RequestParam(value="book_id") String book_id) {
		System.out.println("bookDetail_review2() 진입");
		
		ModelAndView mav = new ModelAndView();
		
		List<ReviewVO> review_list = reviewService.reviewListByBook_id(book_id);
		JSONObject reviews = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			for(int i=0; i<review_list.size(); i++) {
				JSONObject j = new JSONObject();
				j.put("review_no", review_list.get(i).getReview_no());
				j.put("id", review_list.get(i).getId());
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

}

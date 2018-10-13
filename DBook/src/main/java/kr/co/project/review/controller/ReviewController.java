package kr.co.project.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		System.out.println("forward 성공");
		
		String book_id = request.getAttribute("book_id").toString();
		List<ReviewVO> reviews = reviewService.reviewListByBook_id(book_id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviews", reviews);
		mav.setViewName("/bookDetail/detail");
		
		return mav;
	}

}

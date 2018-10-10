package kr.co.project.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.review.service.ReviewService;
import kr.co.project.review.vo.ReviewVO;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/write.do", method=RequestMethod.POST)
	public ModelAndView reviewInput(@ModelAttribute ReviewVO review) {
		
		System.out.println("reviewInput()진입");
		System.out.println(review);
		
		reviewService.writeReview(review);
		
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}

}

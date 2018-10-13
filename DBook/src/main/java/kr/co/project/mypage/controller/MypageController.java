package kr.co.project.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	// 마이 페이지
	@RequestMapping(("/library.do"))
	public ModelAndView mypage() {
		System.out.println("mypage()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/library2");
		
		return mav;
	}
	@RequestMapping(("/allreview.do"))
	public ModelAndView allreview() {
		System.out.println("allreview()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/allreview");
		
		return mav;
	}
	@RequestMapping(("/bookmark.do"))
	public ModelAndView bookmark() {
		System.out.println("bookmark()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/bookmark");
		
		return mav;
	}
	@RequestMapping(("/rated.do"))
	public ModelAndView rated() {
		System.out.println("rated()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/rated");
		
		return mav;
	}
	
	@RequestMapping(("/userRating.do"))
	public ModelAndView userRating() {
		System.out.println("userRating()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/userRating");
		
		return mav;
	}
}

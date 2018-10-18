package kr.co.project.mypage.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.vo.LoginVO;
import kr.co.project.review.service.ReviewService;
import kr.co.project.review.vo.ReviewVO;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private ReviewService mpService;
	
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
		
		String[] asd = {"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"};
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/userRating");
		mav.addObject("asd",asd);
		
		return mav;
	}
	
	@RequestMapping(("/ratingSubmit.do"))
	public void ratingSubmit(@RequestParam String[] bookId,@RequestParam int[] bookRating, HttpSession session) {
		System.out.println("ratingSubmit()진입");
		
		List<ReviewVO> list = new ArrayList<>(); 
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		for(int i = 0; i<10; i++) {
			ReviewVO mp = new ReviewVO();
			mp.setBook_id(bookId[i]);
			mp.setRating(bookRating[i]);
			mp.setId(user.getId());
			list.add(mp);
		}
		
		mpService.addUserRating(list);
	}
}

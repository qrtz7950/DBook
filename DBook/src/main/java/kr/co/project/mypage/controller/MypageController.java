package kr.co.project.mypage.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.vo.LoginVO;
import kr.co.project.mypage.service.MypageService;
import kr.co.project.review.service.ReviewService;
import kr.co.project.review_reaction.vo.ReviewReactionVO;

@Controller
@RestController
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mpService;
	
	@Autowired
	private ReviewService rvService;
	
	// 마이 페이지
	@RequestMapping(("/library.do"))
	public ModelAndView mypage() {
		System.out.println("mypage()진입");
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mypage/library");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(("/bookmark.json"))
	public JSONObject bookmark(HttpSession session, @RequestParam(value="nTh") int nTh) {
		System.out.println("bookmark()진입");
		int start = 4 * nTh + 1;
		int end = 4 * nTh + 4;
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		System.out.println("해당 시행은 " + (nTh+1) + "번째 시행입니다");

		JSONObject books = null;
		
		if(user != null) {
			books = mpService.bookmarkBooks(user.getId(),start,end);
		}
		
		return books;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/review.json", method = RequestMethod.POST)
	public JSONObject mypageReview(HttpSession session) {
		System.out.println("mypageReview()진입");
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		JSONObject reviews = null;
		
		if(user != null) {
			reviews = mpService.review(user.getId());
		}
		
		return reviews;
	}
	
	// review_no, id, good_or_bad 로 리뷰 good/bad 선택 실행
	@ResponseBody
	@RequestMapping(value="/review_react.do", method = RequestMethod.POST)
	public JSONObject mypageReview_react(@ModelAttribute ReviewReactionVO reviewReaction) {
		System.out.println("mypageReview_react() 진입");

		 JSONObject reaction = rvService.review_react(reviewReaction);
		
		return reaction;
	}
	
	@ResponseBody
	@RequestMapping(value="/cookie.json", method = RequestMethod.POST)
	public JSONObject cookie(@RequestParam(value="cookieBookArray") String[] cookieBookArray) {
		System.out.println("cookie() 진입");

		JSONObject  cookie = mpService.getCookieBookList(cookieBookArray);
		
		return cookie;
	}
	
	/*@ResponseBody
	@RequestMapping(value="/userRating.do", method = RequestMethod.POST)
	public JSONObject userRating(@RequestParam(value="RatingBookArray") String[] RatingBookArray) {
		System.out.println("userRating() 진입");
		JSONObject userRating = (JSONObject) mpService.getRatingBookArray(RatingBookArray);
		
		return userRating;
	}
	*/
	@RequestMapping(("/userRating.do"))
	public ModelAndView userRating() {
		System.out.println("userRating()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/userRating");
		mav.addObject("book", mpService.selectUserBookRating());
		
		return mav;
	}

}



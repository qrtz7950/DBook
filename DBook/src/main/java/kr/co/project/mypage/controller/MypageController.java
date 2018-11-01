package kr.co.project.mypage.controller;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
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
import kr.co.project.mypage.vo.MypageVO;
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
	public JSONObject bookmark(@RequestParam(value="id") String id, @RequestParam(value="nTh") int nTh) {
		System.out.println("bookmark()진입");
		int start = 4 * nTh + 1;
		int end = 4 * nTh + 4;
		System.out.println("해당 시행은 " + (nTh+1) + "번째 시행입니다");
		System.out.println(id + "의 즐겨찾기를 가져옴" + start + "번째부터" + end + "번째까지");
		
		JSONObject books = mpService.bookmarkBooks(id,start,end);
		
		return books;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/review.json", method = RequestMethod.POST)
	public JSONObject mypageReview(HttpSession session) {
		System.out.println("mypageReview()진입");
		
		LoginVO user = (LoginVO) session.getAttribute("user");

		JSONObject reviews = mpService.review(user.getId());
		
		return reviews;
	}
	
	// review_no, id, good_or_bad 로 리뷰 good/bad 선택 실행
	@ResponseBody
	@RequestMapping(value="/review_react.do", method = RequestMethod.POST)
	public JSONObject mypageReview_react(@ModelAttribute ReviewReactionVO reviewReaction) {
		System.out.println("mypageReview_react() 진입");
		//System.out.println(reviewReaction);
		
		JSONObject reaction = rvService.review_react(reviewReaction);
		
		return reaction;
	}
	
	@ResponseBody
	@RequestMapping(value="/cookie.json", method = RequestMethod.POST)
	public JSONObject cookie(@RequestParam(value="cookieBookArray") String[] cookieBookArray) {
		System.out.println("cookie() 진입");
		
		JSONObject cookie = mpService.getCookieBookList(cookieBookArray);
		
		return cookie;
	}
	
	@RequestMapping(("/userRating.do"))
	public ModelAndView userRating() {
		System.out.println("userRating()진입");
		
		String[] asd = {"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"};
		// 적재된 책을 꺼내와서 페이지로 쏴주는 코드 작성필요
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/userRating");
		mav.addObject("asd",asd);
		
		return mav;
	}

}



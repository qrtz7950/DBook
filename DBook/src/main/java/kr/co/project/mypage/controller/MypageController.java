package kr.co.project.mypage.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.vo.LoginVO;
import kr.co.project.mypage.service.MypageService;

@Controller
@RestController
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mpService;
	
	// 마이 페이지
	@RequestMapping(("/library.do"))
	public ModelAndView mypage(HttpSession session) {
		System.out.println("mypage()진입");
		ModelAndView mav = new ModelAndView();
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		//최초로 보여줄 3개의 카테고리의 4개를 뽑아와야함
		
		//북마크
		JSONObject books = mpService.bookmarkBooks(user.getId(),1 ,4);
		
		System.out.println(books);
		
		//최근에 본 책
		
		//리뷰
		
		mav.setViewName("mypage/library");
		
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(("/bookmark.json"))
	public JSONObject bookmark(@RequestParam(value="id") String id, @RequestParam(value="nTh") int nTh) {
		System.out.println("bookmark()진입");
		int start = 4 * nTh + 1;
		int end = 4 * nTh + 4;
		System.out.println("해당 시행은 " + nTh + "번째 시행입니다");
		System.out.println(id + "의 즐겨찾기를 가져옴" + start + "번째부터" + end + "번째까지");
		
		JSONObject books = mpService.bookmarkBooks(id,start,end);
		
		return books;
	}
	
	@RequestMapping(("/allreview.do"))
	public ModelAndView allreview() {
		System.out.println("allreview()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/allreview");
		
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
		// 적재된 책을 꺼내와서 페이지로 쏴주는 코드 작성필요
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/userRating");
		mav.addObject("asd",asd);
		
		return mav;
	}
}



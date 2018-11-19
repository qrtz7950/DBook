package kr.co.project.ranking.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.ranking.service.RankingService;

@Controller
@RequestMapping("/ranking")
public class RankingController {
	@Autowired
	private RankingService rankingService;
	
	@RequestMapping(value="/rankingHome.do", method=RequestMethod.GET)
	public ModelAndView rankingHome() {
		
		System.out.println("rankingHome() 메소드호출");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("ranking/rankingHome");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/infoReview.do", method=RequestMethod.POST)
	public JSONObject infoReview(@RequestParam String book_id) {
		System.out.println("infoReview() 진입");
		
		JSONObject data = rankingService.infoReview(book_id);
		
		System.out.println(data);
		return data;
	}
}

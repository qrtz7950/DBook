package kr.co.project;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.util.JSONPObject;

@RestController
@Controller
public class TestController {
	
	@RequestMapping("/layerPopUpTest.do")
	public ModelAndView layerPopUpTest(HttpSession session) {

		System.out.println("layerPopUpTest()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/layerPopUp/layerPopUpTest");
		
		return mav;
	}
	
	@RequestMapping("/autocomplete2.do")
	public ModelAndView autocomplete2(HttpSession session) {
		
		System.out.println("autocomplete2()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/autocomplete/autocomplete2");
		
		return mav;
	}
	
	@RequestMapping("/LoginTest.do")
	public ModelAndView LoginTest(HttpSession session) {
		
		System.out.println("LoginTest()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/Login/LoginTest");
		
		return mav;
	}
	
	@RequestMapping("/asd.do")
	public ModelAndView serchTest() {
		
		System.out.println("serchTest()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("test/autocomplete/asd");
		
		return mav;
	}
	
	@RequestMapping("/asdf.json")
	public JSONPObject serchResponse(@RequestParam("keyword") String keyword) {
		
		System.out.println("serchResponse()진입");
		System.out.println(keyword);
		
		String [] strKeywords = {"히히","하하","호호"};
		JSONPObject keywords = new JSONPObject(keyword, strKeywords);
		
		return keywords;
	}

	
}


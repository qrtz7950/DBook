package kr.co.project;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

	
}


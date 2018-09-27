package kr.co.project.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.service.LoginService;
import kr.co.project.login.vo.LoginVO;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/login/login.do", method=RequestMethod.GET)
	public ModelAndView login() {
		
		System.out.println("login() 메소드호출");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/login");
		
		return mav;
	}
	
	@RequestMapping(value="/login/login.do", method=RequestMethod.POST)
	public ModelAndView loginProcess(@ModelAttribute LoginVO user) {
		
		System.out.println("loginProcess() 메소드호출");
		System.out.println(user);
		
		loginService.Login(user);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
}

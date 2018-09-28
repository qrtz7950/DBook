package kr.co.project.login.controller;

import javax.servlet.http.HttpSession;

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
	public ModelAndView login(@ModelAttribute LoginVO user) {
		
		System.out.println("login() 메소드호출");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/login");
		
		return mav;
	}
	
	@RequestMapping(value="/login/login.do", method=RequestMethod.POST)
	public ModelAndView loginProcess(@ModelAttribute LoginVO user, HttpSession session) {
		
		System.out.println("loginProcess() 메소드호출");
		System.out.println("현재 로그인 정보" + user);

		user = loginService.Login(user);

		session.setAttribute("user", user);
		
		System.out.print("세션에 올라간 정보");
		System.out.println((LoginVO)session.getAttribute("user"));
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main/home.do");
		
		return mav;
	}
	
}

package kr.co.project;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.vo.LoginVO;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@RequestMapping("/home.do")
	public ModelAndView home(HttpSession session) {

		System.out.println("home()진입");
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		
		System.out.println(user);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/home");
		
		return mav;
	}
}

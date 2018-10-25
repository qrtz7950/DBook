package kr.co.project.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.login.service.LoginService;
import kr.co.project.login.vo.LoginVO;

@RestController
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.GET)
	public ModelAndView login() {
		
		System.out.println("login() 메소드호출");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/login");
		
		return mav;
	}
	
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public ModelAndView LoginProcess(@ModelAttribute LoginVO user, HttpSession session) {
		
		System.out.println("LoginProcess() 메소드호출");
		System.out.println(user);
		
		user = loginService.Login(user);

		ModelAndView mav = new ModelAndView();
		String msg = "";
		
		if(user == null) {
			System.out.println("틀림");
			msg = "아이디 또는 비밀번호를 확인하세요";
			mav.addObject("msg", msg);
			mav.setViewName("login/login");
			
			return mav;
		} else {
			System.out.println("맞음");
			session.setAttribute("user", user);
			mav.setViewName("redirect:/main/home.do");
			return mav;
		}
	}
	
	@RequestMapping(value="/user/kakaoLogin.do", method=RequestMethod.POST)
	public ModelAndView kakaoLoginProcess(@ModelAttribute LoginVO user, HttpSession session) {
		
		System.out.println("kakaoLoginProcess() 메소드호출");
		System.out.println("현재 로그인 정보" + user);

		user = loginService.kakaoLogin(user);

		session.setAttribute("user", user);
		
		System.out.print("세션에 올라간 정보");
		System.out.println((LoginVO)session.getAttribute("user"));
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main/home.do");
		
		return mav;
	}
	
	@RequestMapping(value="/user/update.do", method=RequestMethod.POST)
	public ModelAndView userInfoUpdate( @RequestParam("id") String id,
										@RequestParam("profile_image") String profile_image,
										@RequestParam("thumbnail_image") String thumbnail_image,
										@RequestParam("nickname") String nickname,
										@RequestParam("gender") String gender,
										@RequestParam("age_range") String age_range,
										Model model, HttpSession session) {
		
		System.out.println("userInfoUpdate() 메소드호출");
		
		LoginVO user = new LoginVO();
		user.setAge_range(age_range);
		user.setGender(gender);
		user.setId(id);
		user.setNickname(nickname);
		user.setProfile_image(profile_image);
		user.setThumbnail_image(thumbnail_image);

		System.out.println(user);
		
		user = loginService.addUserInfo(user);
		
		session.setAttribute("user", user);
		
		System.out.print("세션에 올라간 정보");
		System.out.println((LoginVO)session.getAttribute("user"));
		
		ModelAndView mav = new ModelAndView();
//		mav.setViewName("redirect:/main/home.do");
		
		return mav;
	}

	@RequestMapping(value="/user/signIn.do", method=RequestMethod.POST)
	public ModelAndView signIn(@ModelAttribute LoginVO user, HttpSession session) {
		
		System.out.println("signIn()진입...");
		System.out.println(user);
		
		user = loginService.signIn(user);
		
		String msg = "";
		ModelAndView mav = new ModelAndView();
		
		if(user == null) {
			msg = "이미 존재하는 ID입니다";
			mav.addObject("msg", msg);
			mav.setViewName("login/login");
		} else {
			System.out.println("회원가입후 바로 그 정보로 로그인");
			System.out.println(user);
			session.setAttribute("user", user);
			mav.setViewName("redirect:/main/home.do");
		}
		return mav;
	}
	
	@RequestMapping(value="/user/idDupCheck.json")
	public String idDupCheck(@ModelAttribute LoginVO user) {
		
		System.out.println(user);
		
		String isIdDup = loginService.idDupCheck(user);
		
		return isIdDup;
	}
	
	@RequestMapping(value="/user/logout.do")
	public ModelAndView logOut(HttpSession session) {
		
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main/home.do");
		
		return mav;
   }
	
	// user의 interest 여부 확인
	@ResponseBody
	@RequestMapping(value="/user/check_interest.do")
	public int check_interest(@RequestParam String book_id, HttpSession session) {
		LoginVO user = (LoginVO) session.getAttribute("user");
		String id = user.getId();
		
		return loginService.check_interest(id, book_id);
	}
}

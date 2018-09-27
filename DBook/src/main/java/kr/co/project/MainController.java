package kr.co.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@RequestMapping("/home.do")
	public String home() {
		return "main/home";
	}
}

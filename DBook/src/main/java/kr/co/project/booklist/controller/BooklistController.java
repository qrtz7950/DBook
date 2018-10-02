package kr.co.project.booklist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/booklist")
public class BooklistController {

	@RequestMapping("/category/{category}.do")
	public ModelAndView booklistByCategory(@PathVariable("category") String category) {

		System.out.println("booklistByCategory()진입");
		
		String[] categories = category.split(">");
		
		for(int i=0; i<categories.length; i++) {
			System.out.println(categories[i]);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("categories", categories);
		mav.setViewName("booklist/category");
		
		return mav;
	}
	
}

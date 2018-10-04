package kr.co.project.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.book.vo.BookVO;

@Controller
@RequestMapping("/book")
public class BookController {

	@RequestMapping("/booklist/category/{category}.do")
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
	
	@RequestMapping("/bookDetail/{book_no}.do")
	public ModelAndView bookDetail(@PathVariable("book_no") int book_no) {
		
		System.out.println("bookDetail()진입");
		
		BookVO book = new BookVO();
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bookDetail/detail");
		
		return mav;
	}
	
}

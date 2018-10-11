package kr.co.project.book.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.book.service.BookService;
import kr.co.project.book.vo.BookVO;
import kr.co.project.review.service.ReviewService;
import kr.co.project.review.vo.ReviewVO;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService; 
	
	// 카테고리 검색 페이지
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
	
	// 키워드 검색 페이지
	@RequestMapping("/bookSearch/searchResult.do")
	public ModelAndView booksearchByKeyword() {
		
		System.out.println("booksearchByKeyword()진입");
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bookSearch/searchResult");
		
		return mav;
	}
	
	// 책 세부 페이지
	@RequestMapping("/bookDetail/{book_id}.do")
	public ModelAndView bookDetail(@PathVariable("book_id") String book_id) {
		
		System.out.println("bookDetail()진입");
		ReviewService reviewService = new ReviewService();
		
		BookVO book = bookService.bookDetail(book_id);
		
		ModelAndView mav = new ModelAndView();
		
		if(book!=null) {
			String[] book_introduction = book.getBook_introduction().split(";");
			String[] author_introduction = book.getAuthor_introduction().split(";");
			String[] contents = book.getContents().split(";");
			
			mav.addObject("book", book);
			mav.addObject("book_introduction", book_introduction);
			mav.addObject("author_introduction", author_introduction);
			mav.addObject("contents", contents);
			mav.setViewName("forward:/review/bookDetail_review.do");
		}
		else {
			mav.setViewName("error/error");
		}
		
		return mav;
	}
	
}

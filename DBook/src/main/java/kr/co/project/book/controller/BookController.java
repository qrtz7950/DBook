package kr.co.project.book.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.co.project.book.service.BookService;
import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategorySerchVO;
import kr.co.project.book.vo.CategoryVO;
import kr.co.project.book.vo.SearchVO;
import kr.co.project.book.vo.SelectBooksVO;
import kr.co.project.login.vo.LoginVO;
import kr.co.project.review.service.ReviewService;

@Controller
@RestController
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService bookService; 
	
	// 카테고리 검색 페이지
	@RequestMapping("/booklist/category.do")
	public ModelAndView booklistByCategory(HttpServletRequest request) {

		System.out.println("booklistByCategory()진입");
		
		int page = 1;
		
		if(request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		String category = request.getParameter("category");
		
		int start = 20 * page -19;
		int end = 20 * page;
		
		List<BookVO> bookListByCategory = new ArrayList<>();
		CategoryVO categoryVO = new CategoryVO(start,end,category);
		
		System.out.println(category);
	
		if(category == null || category.equals("")) {
			category = "110";
			categoryVO.setCategoryNumber("110");
		}
		bookListByCategory = bookService.booklistByCategory(categoryVO);
		
		List<CategorySerchVO> categorys = bookService.categorylistByCategoryNoInit(category);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("bookListByCategory", bookListByCategory);
		mav.addObject("categorys", categorys);
		mav.setViewName("booklist/category");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/booklist/categoryList.json", method = RequestMethod.POST)
	public JSONObject categoryList(HttpServletRequest request) {
		System.out.println("categoryList() 진입");
		
		String category = request.getParameter("category");
		
		if(category == null) {
			category = "110";
		}
		
		JSONObject categorys = bookService.categorylistByCategoryNo(category);
		
		return categorys;
	}
	@ResponseBody
	@RequestMapping(value="/booklist/categoryNames.json", method = RequestMethod.POST)
	public JSONObject categoryNames(HttpServletRequest request) {
		System.out.println("categoryNames() 진입");
		
		String categoryNo = request.getParameter("category");
		
		JSONObject categorys = bookService.categoryNameByCategoryNo(categoryNo);
		
		return categorys;
	}
	
	
	// 키워드 검색 페이지
	@RequestMapping("/bookSearch/searchResult.do")
	public ModelAndView booksearchByKeyword(HttpServletRequest request) {
		
		System.out.println("booksearchByKeyword()진입");
		
		int page = 1;
		
		if(request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		String keyword = request.getParameter("keyword");
		int start = 20 * page -19;
		int end = 20 * page;
		
		List<BookVO> bookListByKeyword = new ArrayList<>();
		SearchVO searchVO = new SearchVO(start,end,keyword);
		
		if(keyword == null)
			searchVO.setKeyword("");
		bookListByKeyword = bookService.booklistByKeyword(searchVO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("bookListByKeyword", bookListByKeyword);
		mav.setViewName("bookSearch/searchResult");
		
		
		
		return mav;
	}
	
	// 책 세부 페이지
	@RequestMapping("/bookDetail/{book_id}.do")
	public ModelAndView bookDetail(@PathVariable("book_id") String book_id) {
		
		System.out.println("bookDetail()진입");
		ReviewService reviewService = new ReviewService();
		
		bookService.upView_cnt(book_id);
		BookVO book = bookService.bookDetail(book_id);
		
		ModelAndView mav = new ModelAndView();
		
		if(book!=null) {
			String book_intro = book.getBook_introduction();
			String author_intro = book.getAuthor_introduction();
			String cont = book.getContents();
			
			mav.addObject("book", book);
			
			//mav.setViewName("forward:/review/bookDetail_review.do");
			mav.setViewName("/bookDetail/detail");
		}
		else {
			mav.setViewName("error/error");
		}
		
		return mav;
	}
	
	// 조건에 따른 책 리스트 조회
	@ResponseBody
	@RequestMapping(value="/select_books.do", method = RequestMethod.POST)
	public JSONObject selectBooks(@ModelAttribute SelectBooksVO vo, HttpSession session) {
		System.out.println("selectBooks() 진입");
		
		LoginVO user = (LoginVO) session.getAttribute("user");
		if(user != null) {
			vo.setId(user.getId());
			vo.setAge_range(user.getAge_range());
		}
		JSONObject books = bookService.selectBooks(vo);
		
		return books;
	}
	
}

package kr.co.project.book.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.book.dao.BookDAO;
import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategoryVO;
import kr.co.project.book.vo.SearchVO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	// 책 번호로 책 조회
	public BookVO bookDetail(String book_id) {
		
		BookVO book = new BookVO();
		book.setBook_id(book_id);
		
		book = dao.bookDetail(book);
		
		return book;
	}
	
	// 책 조회수 올리기
	public void upView_cnt(String book_id) {
		
		dao.upView_cnt(book_id);
	}

	public List<BookVO> booklistByCategory(CategoryVO categoryVO) {
	
		return dao.booklistByCategory(categoryVO);
	}
	
	public List<BookVO> booklistByKeyword(SearchVO searchVO) {
		
		return dao.booklistByKeyword(searchVO);
	}
}

package kr.co.project.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.book.dao.BookDAO;
import kr.co.project.book.vo.BookVO;

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
	
}

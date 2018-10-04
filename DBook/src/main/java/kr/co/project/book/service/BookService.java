package kr.co.project.book.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.book.dao.BookDAO;
import kr.co.project.book.vo.BookVO;

@Service
public class BookService {
	
	@Autowired
	private BookDAO dao;
	
	public BookVO bookDetail(int book_no) {
		
		BookVO book = new BookVO();
		
		return book;
	}
	
}

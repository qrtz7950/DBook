package kr.co.project.book.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	// 책 조회수 올리기
	public void upView_cnt(String book_id) {
		
		dao.upView_cnt(book_id);
	}

	public List<BookVO> booklistByCategory(int start, int end, String categoryNumber) {

		Map map = new HashMap();
		String conStart = start + "";
		String conEnd = end + "";
		map.put("startNum", conStart);
		map.put("endNum", conEnd);
		map.put("categoryNumber", categoryNumber);

		return dao.booklistByCategory(map);
	}
}

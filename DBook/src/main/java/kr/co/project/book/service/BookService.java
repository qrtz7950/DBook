package kr.co.project.book.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.book.dao.BookDAO;
import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategoryVO;

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
	
	// 조건에 맞는 책 리스트 조회
	public JSONObject selectBooks(int mode) {
		
		List<BookVO> book_list = new ArrayList<>();
		
		switch(mode) {
			case 1 :
				book_list = dao.top_rating_bookList();
				break;
			case 2 :
				book_list = dao.top_view_cnt_bookList();
				break;
			case 3 :
				book_list = dao.top_interest_bookList();
				break;
		}
		
		JSONObject books = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			for(int i=0; i<book_list.size(); i++) {
				JSONObject j = new JSONObject();
				j.put("book_id", book_list.get(i).getBook_id());
				j.put("book_name", book_list.get(i).getBook_name());
				j.put("cover", book_list.get(i).getCover());
				jArray.add(j);
			}
			
			books.put("name", "books");
			books.put("items", jArray);
			
			System.out.println(books.toString());
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return books;
	}
}

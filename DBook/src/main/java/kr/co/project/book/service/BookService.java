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
import kr.co.project.book.vo.SearchVO;
import kr.co.project.login.vo.LoginVO;

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
	public JSONObject selectBooks(int mode, LoginVO user) {
		List<BookVO> book_list = new ArrayList<>();
		
		switch(mode) {
			case 0 :	// 평점 높은 도서
				book_list = dao.top_rating_bookList();
				break;
			case 1 :	// 조회수 높은 도서
				book_list = dao.top_view_cnt_bookList();
				break;
			case 2 :	// 관심설정 많은 도서
				book_list = dao.top_interest_bookList();
				break;
			case 3 :	// 해당 연령 인기도서
				book_list = dao.top_user_age_bookList(user);
				break;
			case 4 :	// 성향이 비슷한 회원이 좋아한 도서
				book_list = dao.similar_rating_bookList(user);
				break;
			case 5 :	// 관심도서가 같은 사람의 다른 관심도서
				book_list = dao.same_interest_bookList(user);
				break;
		}
		
		JSONObject books = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			for(int i=0; i<book_list.size(); i++) {
				JSONObject j = new JSONObject();
				
				String book_name = book_list.get(i).getBook_name();
				if(book_name.length() > 22) {
					book_name = book_name.substring(0, 21) + "...";
				}
				
				j.put("book_id", book_list.get(i).getBook_id());
				j.put("book_name", book_name);
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
	
	public List<BookVO> booklistByKeyword(SearchVO searchVO) {
		
		return dao.booklistByKeyword(searchVO);
	}
}

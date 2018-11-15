package kr.co.project.book.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.util.JSONPObject;

import kr.co.project.book.dao.BookDAO;
import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategorySerchVO;
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
	
	public List<BookVO> booklistByKeyword(SearchVO searchVO) {
		
		return dao.booklistByKeyword(searchVO);
	}

	public JSONObject categorylistByCategoryNo(String categoryNo) {
		List<String> name = new ArrayList<>();
		List<String> no = new ArrayList<>();
		
		List<CategorySerchVO> list = dao.categorylistByCategoryNo(categoryNo);
		
		int i = categoryNo.length() / 3;

		for(CategorySerchVO cat : list) {
			if(cat.getCategory_no().length() > i * 3) {
				if(!name.contains(cat.getCategory_name().split(";")[i])) {
					name.add(cat.getCategory_name().split(";")[i]);
					no.add(cat.getCategory_no().substring(0, (i+1)*3));
				}
			}
		}
		
		JSONObject categorys = new JSONObject();
		
		categorys.put("name", name);
		categorys.put("no", no);
		
		System.out.println(categorys.toJSONString());
		
		return categorys;
	}

	public List<CategorySerchVO> categorylistByCategoryNoInit(String category) {
		System.out.println("categorylistByCategoryNoInit()진입");
		
		List<String> name = new ArrayList<>();
		List<String> no = new ArrayList<>();
		
		List<CategorySerchVO> catList = new ArrayList<>();
		List<CategorySerchVO> list = dao.categorylistByCategoryNoInit();

		System.out.println(list);
		
		for(CategorySerchVO cat : list) {
			if(category.equals(cat.getCategory_no().substring(0, 3))) {
				name.add(cat.getCategory_name().split(";")[0]);
				no.add(cat.getCategory_no().substring(0, 3));
				break;
			}
			
		}
		for(CategorySerchVO cat : list) {
			if(!name.contains(cat.getCategory_name().split(";")[0])) {
				name.add(cat.getCategory_name().split(";")[0]);
				no.add(cat.getCategory_no().substring(0, 3));
			}
		}
		
		for(int i=0; i<name.size(); i++) {
			CategorySerchVO c = new CategorySerchVO();
			c.setCategory_name(name.get(i));
			c.setCategory_no(no.get(i));
			catList.add(c);
		}
		
		return catList;
	}
	
}


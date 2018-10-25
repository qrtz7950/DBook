package kr.co.project.mypage.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.mypage.dao.MypageDAO;
import kr.co.project.mypage.vo.MinBookVO;
import kr.co.project.review.dao.ReviewDAO;
import kr.co.project.review.vo.ReviewVO;

@Service
public class MypageService {
	
	@Autowired
	private MypageDAO dao;
	
	public JSONObject bookmarkBooks(String id, int start, int end) {
		
		List<MinBookVO> book_list = dao.bookmarkBooks(id);
		JSONObject books = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			
			if(book_list.size() > start) {
				if(book_list.size() < end)
					end = book_list.size();
				
				for(int i=start-1; i<end-1; i++) {
					JSONObject j = new JSONObject();
					j.put("book_id", book_list.get(i).getBook_id());
					j.put("book_name", book_list.get(i).getBook_name());
					j.put("cover", book_list.get(i).getCover());
					j.put("author", book_list.get(i).getAuthor());
					j.put("publisher", book_list.get(i).getPublisher());
			
					jArray.add(j);
				}
				books.put("items", jArray);
				
				System.out.println(books.toString());
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return books;
	}

}

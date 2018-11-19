package kr.co.project.mypage.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.book.vo.BookVO;
import kr.co.project.mypage.dao.MypageDAO;
import kr.co.project.mypage.vo.MinBookVO;
import kr.co.project.mypage.vo.MypageVO;

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
				
				for(int i=start-1; i<=end-1; i++) {
					JSONObject j = new JSONObject();
					j.put("book_id", book_list.get(i).getBook_id());
					j.put("book_name", book_list.get(i).getBook_name());
					j.put("cover", book_list.get(i).getCover());
					j.put("author", book_list.get(i).getAuthor());
					j.put("publisher", book_list.get(i).getPublisher());
			
					jArray.add(j);
				}
				books.put("items", jArray);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return books;
	}

	public JSONObject review(String id) {
		
		List<MypageVO> review_list = dao.reviewListById(id);
		JSONObject reviews = new JSONObject();
		
		try {
			JSONArray jArray = new JSONArray();
			for(int i=0; i<review_list.size(); i++) {
				JSONObject j = new JSONObject();
				j.put("review_no", review_list.get(i).getReview_no());
				j.put("book_id", review_list.get(i).getBook_id());
				j.put("rating", review_list.get(i).getRating());
				j.put("content", review_list.get(i).getContent());
				j.put("good", review_list.get(i).getGood());
				j.put("bad", review_list.get(i).getBad());
				j.put("review_reg_date", review_list.get(i).getReview_reg_date());
				j.put("book_id", review_list.get(i).getBook_id());
				j.put("book_name", review_list.get(i).getBook_name());
				j.put("cover", review_list.get(i).getCover());
				j.put("author", review_list.get(i).getAuthor());
				j.put("publisher", review_list.get(i).getPublisher());
				
				jArray.add(j);
			}
			
			reviews.put("items", jArray);
			
			System.out.println(reviews.toString());
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return reviews;
	}

	public JSONObject getCookieBookList(String[] cookieBookArray) {
		
		List<MypageVO> list = new ArrayList<>();
		JSONObject cookies = new JSONObject();
		JSONArray jArray = new JSONArray();
		
		System.out.println("이거 널이냐 공백이냐" + cookieBookArray[0]);
		
		System.out.println("for문 스타트");
		for(int i=0;i<cookieBookArray.length;i++) {
			if(cookieBookArray[i] != "" && cookieBookArray[i] != " ") {
				System.out.println("가공 전 : " + cookieBookArray[i]);
				cookieBookArray[i] = cookieBookArray[i].replaceAll("\"", "");
				System.out.println("가공 후 : " + cookieBookArray[i]);
				MypageVO m = dao.getCookieBook(cookieBookArray[i]);
				JSONObject j = new JSONObject();
				
				j.put("book_id", m.getBook_id());
				j.put("book_name", m.getBook_name());
				j.put("cover", m.getCover());
				j.put("author", m.getAuthor());
				j.put("publisher", m.getPublisher());
				
				jArray.add(j);
			}
		}
		
		cookies.put("items", jArray);
		
		return cookies;
	}
	//11.19
	public List<MypageVO> getRatingBookArray(String[] RatingBookArray) {
		List<MypageVO> list = new ArrayList<>();
		JSONObject rating = new JSONObject();
		JSONArray jArray = new JSONArray();
		System.out.println(list);
		for(int i=0; i<RatingBookArray.length; i++) {
			MypageVO m = (MypageVO) dao.getRatingBooks(RatingBookArray[i]);
			JSONObject j = new JSONObject();
			
			j.put("book_id", m.getBook_id());
			j.put("book_name", m.getBook_name());
			j.put("cover", m.getCover());
			j.put("published_date", m.getPublished_date());
			
			jArray.add(j);
		}
		
		
		return list;
		
	}

	public List<BookVO> selectUserBookRating() {
		return dao.selectUserBookRating();
	}
}

package kr.co.project.ranking.service;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.ranking.dao.RankingDAO;
import kr.co.project.ranking.vo.InfoReviewVO;

@Service
public class RankingService {
	
	@Autowired
	private RankingDAO dao;

	public JSONObject infoReview(String book_id) {
		JSONObject data = new JSONObject();
		
		try {
			InfoReviewVO info = new InfoReviewVO();
			info.setBook_id(book_id);
			int zero_check = 0;
			
			JSONArray jArray = new JSONArray();
			for(int i=1; i<=7; i++) {
				
				info.setAge_range(i+"0~");
				
				JSONObject j = new JSONObject();
				JSONObject k = new JSONObject();
				
				info.setGender("male");
				int man = dao.countReviewByGender_Age_range(info);
				
				info.setGender("female");
				int woman = dao.countReviewByGender_Age_range(info);
				
				k.put("man", man);
				k.put("woman", woman);
				
				zero_check += man + woman;
				
				if(i!=7) {
					j.put("State", i+"0대");
				}else {
					j.put("State", i+"0대 이상");
				}
				j.put("freq", k);
				
				jArray.add(j);
			}
			
			data.put("name", "평점 상세정보");
			if(zero_check != 0) {
				data.put("freqData", jArray);
			}else {
				data.put("freqData", 0);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return data;
	}
	
}

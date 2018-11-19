package kr.co.project.ranking.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.ranking.vo.InfoReviewVO;

@Repository
public class RankingDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public int countReviewByGender_Age_range(InfoReviewVO info) {
		return sqlSessionTemplate.selectOne("kr.co.project.ranking.dao.RankingDAO.countReviewByGender_Age_range", info);
	}
}

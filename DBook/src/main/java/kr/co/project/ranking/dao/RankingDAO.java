package kr.co.project.ranking.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RankingDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
}

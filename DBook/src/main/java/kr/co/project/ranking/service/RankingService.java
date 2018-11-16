package kr.co.project.ranking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.ranking.dao.RankingDAO;

@Service
public class RankingService {
	
	@Autowired
	private RankingDAO dao;
	
}

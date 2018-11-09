package kr.co.project.book.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategoryVO;
import kr.co.project.review.vo.ReviewVO;

@Repository
public class BookDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public BookVO bookDetail(BookVO book) {
		return sqlSessionTemplate.selectOne("kr.co.project.book.dao.BookDAO.bookDetail", book);
	}

	public void upView_cnt(String book_id) {
		sqlSessionTemplate.update("kr.co.project.book.dao.BookDAO.upView_cnt", book_id);		
	}

	public List<BookVO> booklistByCategory(CategoryVO categoryVO) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.booklistByCategory", categoryVO);
	}

}

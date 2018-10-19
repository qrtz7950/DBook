package kr.co.project.book.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.book.vo.BookVO;

@Repository
public class BookDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public BookVO bookDetail(BookVO book) {
		book = sqlSessionTemplate.selectOne("kr.co.project.book.dao.BookDAO.bookDetail", book);
		return book;
	}

	public void upView_cnt(String book_id) {
		sqlSessionTemplate.update("kr.co.project.book.dao.BookDAO.upView_cnt", book_id);		
	}
	
}

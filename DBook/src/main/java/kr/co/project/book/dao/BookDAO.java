package kr.co.project.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategorySerchVO;
import kr.co.project.book.vo.CategoryVO;
import kr.co.project.book.vo.SearchVO;

import kr.co.project.login.vo.LoginVO;

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
	
	public List<BookVO> booklistByKeyword(SearchVO searchVO) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.booklistByKeyword", searchVO);
	}

	public List<BookVO> top_rating_bookList() {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topRatingBookList");
	}

	public List<BookVO> top_view_cnt_bookList() {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topViewCntBookList");
	}

	public List<BookVO> top_interest_bookList() {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topInterestBookList");
	}


	public List<CategorySerchVO> categorylistByCategoryNo(String categoryNo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.categorylistBycategoryNo", categoryNo);
	}
	
	public List<CategorySerchVO> categorylistByCategoryNoInit() {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.categorylistBycategoryNoInit");
	}
	public List<BookVO> top_user_age_bookList(LoginVO user) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topUserAgeBookList", user);
	}

	public List<BookVO> similar_rating_bookList(LoginVO user) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.similarRatingBookList", user);
	}
	
	public List<BookVO> same_interest_bookList(LoginVO user) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.sameInterestBookList", user);
	}

}

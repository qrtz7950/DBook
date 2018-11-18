package kr.co.project.book.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.project.book.vo.BookVO;
import kr.co.project.book.vo.CategorySerchVO;
import kr.co.project.book.vo.CategoryVO;
import kr.co.project.book.vo.SearchVO;
import kr.co.project.book.vo.SelectBooksVO;
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

	public List<BookVO> top_rating_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topRatingBookList", vo);
	}

	public List<BookVO> top_view_cnt_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topViewCntBookList", vo);
	}

	public List<BookVO> top_interest_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topInterestBookList", vo);
	}


	public List<CategorySerchVO> categorylistByCategoryNo(String categoryNo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.categorylistBycategoryNo", categoryNo);
	}
	
	public List<CategorySerchVO> categorylistByCategoryNoInit() {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.categorylistBycategoryNoInit");
	}
	public List<BookVO> top_user_age_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.topUserAgeBookList", vo);
	}

	public List<BookVO> similar_rating_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.similarRatingBookList", vo);
	}
	
	public List<BookVO> same_interest_bookList(SelectBooksVO vo) {
		return sqlSessionTemplate.selectList("kr.co.project.book.dao.BookDAO.sameInterestBookList", vo);
	}

	public CategorySerchVO categoryNamesByCategoryNo(String categoryNo) {
		return sqlSessionTemplate.selectOne("kr.co.project.book.dao.BookDAO.categoryNamesBycategoryNo", categoryNo);
	}

	public String avg_ratingByBookId(String book_id) {
		return sqlSessionTemplate.selectOne("kr.co.project.book.dao.BookDAO.avg_ratingByBookId", book_id);
	}

}

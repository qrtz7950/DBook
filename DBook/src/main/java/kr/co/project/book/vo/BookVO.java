package kr.co.project.book.vo;

/**
 * @author bit
 *
 */
public class BookVO {
	
	private String book_id;
	private String book_name;
	private String category_no;
	private String author;
	private String translator;
	private String publisher;
	private String published_date;
	private String is_ebook;
	private String form_detail;
	private String isbn;
	private int view_cnt;
	private String book_introduction;
	private String author_introduction;
	private String contents;
	private String cover;
	private String price;
	
	public BookVO() {
	}
	
	public BookVO(String book_id, String book_name, String category_no, String author, String translator,
			String publisher, String published_date, String is_ebook, String form_detail, String isbn, int view_cnt,
			String book_introduction, String author_introduction, String contents, String cover, String price) {
		super();
		this.book_id = book_id;
		this.book_name = book_name;
		this.category_no = category_no;
		this.author = author;
		this.translator = translator;
		this.publisher = publisher;
		this.published_date = published_date;
		this.is_ebook = is_ebook;
		this.form_detail = form_detail;
		this.isbn = isbn;
		this.view_cnt = view_cnt;
		this.book_introduction = book_introduction;
		this.author_introduction = author_introduction;
		this.contents = contents;
		this.cover = cover;
		this.price = price;
	}



	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getCategory_no() {
		return category_no;
	}

	public void setCategory_no(String category_no) {
		this.category_no = category_no;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTranslator() {
		return translator;
	}

	public void setTranslator(String translator) {
		this.translator = translator;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPublished_date() {
		return published_date;
	}

	public void setPublished_date(String published_date) {
		this.published_date = published_date;
	}

	public String getIs_ebook() {
		return is_ebook;
	}

	public void setIs_ebook(String is_ebook) {
		this.is_ebook = is_ebook;
	}

	public String getForm_detail() {
		return form_detail;
	}

	public void setForm_detail(String form_detail) {
		this.form_detail = form_detail;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public String getBook_introduction() {
		return book_introduction;
	}

	public void setBook_introduction(String book_introduction) {
		this.book_introduction = book_introduction;
	}

	public String getAuthor_introduction() {
		return author_introduction;
	}

	public void setAuthor_introduction(String author_introduction) {
		this.author_introduction = author_introduction;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}
	
	public String getPrice() {
		return price;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "BookVO [book_id=" + book_id + ", book_name=" + book_name + ", category_no=" + category_no + ", author="
				+ author + ", translator=" + translator + ", publisher=" + publisher + ", published_date="
				+ published_date + ", is_ebook=" + is_ebook + ", form_detail=" + form_detail + ", isbn=" + isbn
				+ ", view_cnt=" + view_cnt + ", book_introduction=" + book_introduction + ", author_introduction="
				+ author_introduction + ", contents=" + contents + ", cover=" + cover + ", price=" + price + "]";
	}
	
}

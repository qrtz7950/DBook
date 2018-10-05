package kr.co.project.book.vo;

public class BookVO {
	
	private String book_id;
	private String book_name;
	private String cover;
	private String author;
	private String translator;
	private String publisher;
	private String published_date;
	private int is_ebook;
	private String form_detail;
	private String isbn_10;
	private String isbn_13;
	private String book_introduction;
	private String author_introduction;
	private String contents;
	private int view_cnt;
	private String category1;
	private String category2;
	private String category3;
	
	public BookVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookVO(String book_id, String book_name, String cover, String author, String translator, String publisher,
			String published_date, int is_ebook, String form_detail, String isbn_10, String isbn_13,
			String book_introduction, String author_introduction, String contents, int view_cnt, String category1,
			String category2, String category3) {
		super();
		this.book_id = book_id;
		this.book_name = book_name;
		this.cover = cover;
		this.author = author;
		this.translator = translator;
		this.publisher = publisher;
		this.published_date = published_date;
		this.is_ebook = is_ebook;
		this.form_detail = form_detail;
		this.isbn_10 = isbn_10;
		this.isbn_13 = isbn_13;
		this.book_introduction = book_introduction;
		this.author_introduction = author_introduction;
		this.contents = contents;
		this.view_cnt = view_cnt;
		this.category1 = category1;
		this.category2 = category2;
		this.category3 = category3;
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

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
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

	public int getIs_ebook() {
		return is_ebook;
	}

	public void setIs_ebook(int is_ebook) {
		this.is_ebook = is_ebook;
	}

	public String getForm_detail() {
		return form_detail;
	}

	public void setForm_detail(String form_detail) {
		this.form_detail = form_detail;
	}

	public String getIsbn_10() {
		return isbn_10;
	}

	public void setIsbn_10(String isbn_10) {
		this.isbn_10 = isbn_10;
	}

	public String getIsbn_13() {
		return isbn_13;
	}

	public void setIsbn_13(String isbn_13) {
		this.isbn_13 = isbn_13;
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

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public String getCategory1() {
		return category1;
	}

	public void setCategory1(String category1) {
		this.category1 = category1;
	}

	public String getCategory2() {
		return category2;
	}

	public void setCategory2(String category2) {
		this.category2 = category2;
	}

	public String getCategory3() {
		return category3;
	}

	public void setCategory3(String category3) {
		this.category3 = category3;
	}

	@Override
	public String toString() {
		return "BookVO [book_id=" + book_id + ", book_name=" + book_name + ", cover=" + cover + ", author=" + author
				+ ", translator=" + translator + ", publisher=" + publisher + ", published_date=" + published_date
				+ ", is_ebook=" + is_ebook + ", form_detail=" + form_detail + ", isbn_10=" + isbn_10 + ", isbn_13="
				+ isbn_13 + ", book_introduction=" + book_introduction + ", author_introduction=" + author_introduction
				+ ", contents=" + contents + ", view_cnt=" + view_cnt + ", category1=" + category1 + ", category2="
				+ category2 + ", category3=" + category3 + "]";
	}
	
	
	
}

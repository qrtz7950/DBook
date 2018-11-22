package kr.co.project.mypage.vo;

public class MypageVO {
	
	private String book_id;
	private String book_name;
	private String id;
	private String cover;
	private String author;
	private String publisher;
	private String published_date;
	private int review_no;
	private int rating;
	private String content;
	private int good;
	private int bad;
	private String review_reg_date;

	public MypageVO() {
	}
	
	public MypageVO(String book_id, String book_name, String id, String cover, String author, String publisher,
			String published_date, int review_no, int rating, String content, int good, int bad,
			String review_reg_date) {
		super();
		this.book_id = book_id;
		this.book_name = book_name;
		this.id = id;
		this.cover = cover;
		this.author = author;
		this.publisher = publisher;
		this.published_date = published_date;
		this.review_no = review_no;
		this.rating = rating;
		this.content = content;
		this.good = good;
		this.bad = bad;
		this.review_reg_date = review_reg_date;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public int getBad() {
		return bad;
	}

	public void setBad(int bad) {
		this.bad = bad;
	}

	public String getReview_reg_date() {
		return review_reg_date;
	}

	public void setReview_reg_date(String review_reg_date) {
		this.review_reg_date = review_reg_date;
	}

	@Override
	public String toString() {
		return "MypageVO [book_id=" + book_id + ", book_name=" + book_name + ", id=" + id + ", cover=" + cover
				+ ", author=" + author + ", publisher=" + publisher + ", published_date=" + published_date
				+ ", review_no=" + review_no + ", rating=" + rating + ", content=" + content + ", good=" + good
				+ ", bad=" + bad + ", review_reg_date=" + review_reg_date + "]";
	}
	
}

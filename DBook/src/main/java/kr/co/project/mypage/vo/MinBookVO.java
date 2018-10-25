package kr.co.project.mypage.vo;

public class MinBookVO {
	private String book_id;
	private String book_name;
	private String cover;
	private String author;
	private String publisher;
	
	public MinBookVO() {
	}

	public MinBookVO(String book_id, String book_name, String cover, String author, String publisher) {
		super();
		this.book_id = book_id;
		this.book_name = book_name;
		this.cover = cover;
		this.author = author;
		this.publisher = publisher;
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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	@Override
	public String toString() {
		return "BookVO [book_id=" + book_id + ", book_name=" + book_name + ", cover=" + cover + ", author=" + author
				+ ", publisher=" + publisher + "]";
	}
	
}

package kr.co.project.review.vo;

public class ReviewVO {
	
	private String id;
	private String book_id;
	private int rating;
	private String content;
	private int good;
	private int bad;
	
	public ReviewVO() {
		
	}

	public ReviewVO(String id, String book_id, int rating, String content, int good, int bad) {
		this.id = id;
		this.book_id = book_id;
		this.rating = rating;
		this.content = content;
		this.good = good;
		this.bad = bad;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
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

	@Override
	public String toString() {
		return "ReviewVO [id=" + id + ", book_id=" + book_id + ", rating=" + rating + ", content=" + content + ", good="
				+ good + ", bad=" + bad + "]";
	}
	
	
}

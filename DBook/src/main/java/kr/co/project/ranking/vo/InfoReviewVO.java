package kr.co.project.ranking.vo;

public class InfoReviewVO {
	private String book_id;
	private String gender;
	private String age_range;
	
	public InfoReviewVO() {
		super();
	}
	public InfoReviewVO(String book_id, String gender, String age_range) {
		super();
		this.book_id = book_id;
		this.gender = gender;
		this.age_range = age_range;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge_range() {
		return age_range;
	}
	public void setAge_range(String age_range) {
		this.age_range = age_range;
	}
	@Override
	public String toString() {
		return "InfoReviewVO [book_id=" + book_id + ", gender=" + gender + ", age_range=" + age_range + "]";
	}
	
}

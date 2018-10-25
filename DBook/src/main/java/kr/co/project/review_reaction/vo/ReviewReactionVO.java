package kr.co.project.review_reaction.vo;

public class ReviewReactionVO {
	private int review_no;
	private String id;
	private int good_or_bad;
	
	
	public ReviewReactionVO() {
	
	}
	
	public ReviewReactionVO(int review_no, String id, int good_or_bad) {
		this.review_no = review_no;
		this.id = id;
		this.good_or_bad = good_or_bad;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getGood_or_bad() {
		return good_or_bad;
	}

	public void setGood_or_bad(int good_or_bad) {
		this.good_or_bad = good_or_bad;
	}

	@Override
	public String toString() {
		return "ReviewReaction [review_no=" + review_no + ", id=" + id + ", good_or_bad=" + good_or_bad + "]";
	}
	
}

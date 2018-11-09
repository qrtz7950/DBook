package kr.co.project.book.vo;

public class CategoryVO {
	private int start;
	private int end;
	private String categoryNumber;
	public CategoryVO() {
	}
	public CategoryVO(int start, int end, String categoryNumber) {
		this.start = start;
		this.end = end;
		this.categoryNumber = categoryNumber;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getCategoryNumber() {
		return categoryNumber;
	}
	public void setCategoryNumber(String categoryNumber) {
		this.categoryNumber = categoryNumber;
	}
	@Override
	public String toString() {
		return "CategoryVO [start=" + start + ", end=" + end + ", categoryNumber=" + categoryNumber + "]";
	}
	
}


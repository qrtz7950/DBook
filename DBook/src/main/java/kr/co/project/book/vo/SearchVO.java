package kr.co.project.book.vo;

public class SearchVO {

	private int start;
	private int end;
	private String keyword;
	
	
	public SearchVO() {
		// TODO Auto-generated constructor stub
	}
	public SearchVO(int start, int end, String keyword) {
		this.start = start;
		this.end = end;
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		return "SearchVO [start=" + start + ", end=" + end + ", keyword=" + keyword + "]";
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	
}

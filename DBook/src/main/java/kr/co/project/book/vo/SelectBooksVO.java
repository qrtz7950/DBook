package kr.co.project.book.vo;

public class SelectBooksVO {
	private int mode;
	private String id;
	private String age_range;
	private int start;
	private int end;
	
	public SelectBooksVO() {
		super();
	}

	public SelectBooksVO(int mode, String id, String age_range, int start, int end) {
		super();
		this.mode = mode;
		this.id = id;
		this.age_range = age_range;
		this.start = start;
		this.end = end;
	}

	public int getMode() {
		return mode;
	}

	public void setMode(int mode) {
		this.mode = mode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAge_range() {
		return age_range;
	}

	public void setAge_range(String age_range) {
		this.age_range = age_range;
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

	@Override
	public String toString() {
		return "SelectBooksVO [mode=" + mode + ", id=" + id + ", age_range=" + age_range + ", start=" + start + ", end="
				+ end + "]";
	}

	
}

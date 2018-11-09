package kr.co.project.usercorrelation.vo;

public class UserCorrelationVO {
	private String id;
	private String compare_id;
	private float distance;
	
	public UserCorrelationVO() {
	}

	public UserCorrelationVO(String id, String compare_id, float distance) {
		this.id = id;
		this.compare_id = compare_id;
		this.distance = distance;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public String getCompare_id() {
		return compare_id;
	}

	public void setCompare_id(String compare_id) {
		this.compare_id = compare_id;
	}

	public float getDistance() {
		return distance;
	}

	public void setDistance(float distance) {
		this.distance = distance;
	}

	@Override
	public String toString() {
		return "UserCorrelationVO [id=" + id + ", compare_id=" + compare_id + ", distance=" + distance
				+ "]";
	}
	
}

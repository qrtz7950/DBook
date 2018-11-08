package kr.co.project.usercorrelation.vo;

public class UserCorrelationVO {
	private String standardId;
	private String compareId;
	private float distance;
	
	public UserCorrelationVO() {
	}
	
	public UserCorrelationVO(String standardId, String compareId, float distance) {
		this.standardId = standardId;
		this.compareId = compareId;
		this.distance = distance;
	}

	public String getstandardId() {
		return standardId;
	}

	public void setstandardId(String standardId) {
		this.standardId = standardId;
	}

	public String getCompareId() {
		return compareId;
	}

	public void setCompareId(String compareId) {
		this.compareId = compareId;
	}

	public float getDistance() {
		return distance;
	}

	public void setDistance(float distance) {
		this.distance = distance;
	}

	@Override
	public String toString() {
		return "UserCorrelationVO [standardId=" + standardId + ", compareId=" + compareId + ", distance=" + distance
				+ "]";
	}
	
}

package kr.co.project.login.vo;

public class LoginVO {
	
	private int	no; 
	private String id;
	private String password;
	private String profile_image;
	private String thumbnail_image;
	private String nickname;
	private String age_range;
	private String gender;
	private String reg_date;
	public LoginVO() {
	}
	public LoginVO(int no, String id, String password, String profile_image, String thumbnail_image, String nickname,
			String age_range, String gender, String reg_date) {
		this.no = no;
		this.id = id;
		this.password = password;
		this.profile_image = profile_image;
		this.thumbnail_image = thumbnail_image;
		this.nickname = nickname;
		this.age_range = age_range;
		this.gender = gender;
		this.reg_date = reg_date;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getProfile_image() {
		return profile_image;
	}
	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}
	public String getThumbnail_image() {
		return thumbnail_image;
	}
	public void setThumbnail_image(String thumbnail_image) {
		this.thumbnail_image = thumbnail_image;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAge_range() {
		return age_range;
	}
	public void setAge_range(String age_range) {
		this.age_range = age_range;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "LoginVO [no=" + no + ", id=" + id + ", password=" + password + ", profile_image=" + profile_image
				+ ", thumbnail_image=" + thumbnail_image + ", nickname=" + nickname + ", age_range=" + age_range
				+ ", gender=" + gender + ", reg_date=" + reg_date + "]";
	}
}

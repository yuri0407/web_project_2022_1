package br.dto;

public class ManagerDto {
	private int mNum;
	private String id;
	private String pwd;
	
	public int getmNum() {
		return mNum;
	}
	public void setmNum(int mNum) {
		this.mNum = mNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public ManagerDto() {} //매개변수가 없는 기본 생성자
	public ManagerDto(int mNum, String id, String pwd) {
		this.mNum = mNum;
		this.id = id;
		this.pwd = pwd;
	}


}

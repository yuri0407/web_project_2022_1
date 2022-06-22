package br.dto;

public class NoticeDto {
	private int noNum;
	private String nTitle;
	private String nContent;
	private String nDate;
	
	
	public int getNoNum() {
		return noNum;
	}
	public void setNoNum(int noNum) {
		this.noNum = noNum;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnData(String nDate) {
		this.nDate = nDate;
	}
	
	
	public NoticeDto() {} //매개변수가 없는 기본 생성자
	public NoticeDto(int noNum, String nTitle, String nContent, String nDate) {
		this.noNum = noNum;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nDate = nDate;
	}
	
}

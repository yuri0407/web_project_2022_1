package br.dto;


public class BookDto {

	private int bno;
	private String bName;
	private String writer;
	private String publisher;
	private String pDate;
	private String category;
	private String bContent;
	
	
	public int getbno() {
		return bno;
	}
	public void setbno(int bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bName;
	}
	public void setBname(String bname) {
		this.bName = bname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPdate() {
		return pDate;
	}
	public void setPdate(String pdate) {
		this.pDate = pdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	
	public BookDto() {} //매개변수가 없는 기본 생성자
	public BookDto(int bno, String bname, String writer, String publisher, String pdate, String category, String bContent) {
		this.bno = bno;
		this.bName = bname;
		this.writer = writer;
		this.publisher = publisher;
		this.pDate = pdate;
		this.category = category;
		this.bContent = bContent;
	}
	
	
}

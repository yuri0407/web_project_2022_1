package br.dto;

/**==================================================
 * 패키지명 : br.dto
 * 파일명 : ReviewDto.java
 * 작성자 : 정유리
 * 변경이력 : 
 *  2022.06.13 / 최초작성  / 정유리
 * 프로그램 설명 :
 *  DB 데이터를 담아 전달하는 객체
**=================================================*/
public class ReviewDto {
	private int rNum;
	private String nickName;
	private String bname;
	private String content;
	
	
	

	public int getrNum() {
		return rNum;
	}
	public void setrNum(int rNum) {
		this.rNum = rNum;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}	
	public ReviewDto() {} //매개변수가 없는 기본 생성자
	public ReviewDto(int rNum, String nickName, String bname, String content) {
		this.rNum = rNum;
		this.nickName = nickName;
		this.bname = bname;
		this.content = content;
	}
}

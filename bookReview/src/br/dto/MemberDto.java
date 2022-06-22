package br.dto;

/**==================================================
 * 패키지명 : br.dto
 * 파일명 : MemberDto.java
 * 작성자 : 정유리
 * 변경이력 : 
 *  2022.06.18 / 최초작성  / 정유리
 * 프로그램 설명 :
 *  DB 데이터를 담아 전달하는 객체
**=================================================*/
public class MemberDto {
	private String id;
	private String pwd;
	private String email;
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public MemberDto() {} //매개변수가 없는 기본 생성자
	public MemberDto(String id, String pwd, String email) {
		this.id = id;
		this.pwd = pwd;
		this.email = email;
	}
	
	
}

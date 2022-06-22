package br.dto;

public class QuestionDto {

	private int qNo;
	private String qTitle;
	private String qContent;
	private String qDate;
	private String mAnswer;
	
	
	
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqDate() {
		return qDate;
	}
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	public String getmAnswer() {
		return mAnswer;
	}
	public void setmAnswer(String mAnswer) {
		this.mAnswer = mAnswer;
	}
	
	public QuestionDto() {}
	public QuestionDto(int qNo, String qTitle, String qContent, String qDate, String mAnswer) {
		this.qNo = qNo;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qDate = qDate;
		this.mAnswer = mAnswer;
	}
}

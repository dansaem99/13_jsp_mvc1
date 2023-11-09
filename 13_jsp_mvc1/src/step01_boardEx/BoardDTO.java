package step01_boardEx;

import java.util.Date;

public class BoardDTO {
	
	//DTO란 Data Transfer Object의 약자로, 계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체이다.


	private long boardId;
	private String writer;
	private String email;
	private String subject;
	private String password;
	private String content;
	private long readCnt;
	private Date enrollDt;
	
	public long getBoardId() {
		return boardId;
	}
	
	public void setBoardId(long boardId) {
		this.boardId = boardId;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public long getReadCnt() {
		return readCnt;
	}
	
	public void setReadCnt(long readCnt) {
		this.readCnt = readCnt;
	}
	
	public Date getEnrollDt() {
		return enrollDt;
	}
	
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardId=" + boardId + ", writer=" + writer + ", email=" + email + ", subject=" + subject
				+ ", password=" + password + ", content=" + content + ", readCnt=" + readCnt + ", enrollDt=" + enrollDt
				+ "]";
	}
	
}

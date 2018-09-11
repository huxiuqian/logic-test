package com.huxiuqianbs.pojo;

public class Question {
	private int qid;
	private String qcet;
	private String answer;
	public int getQid() {
		return qid;
	}
	public void setQid(int qid) {
		this.qid = qid;
	}
	public String getQcet() {
		return qcet;
	}
	public void setQcet(String qcet) {
		this.qcet = qcet;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "Question [qid=" + qid + ", qcet=" + qcet + ", answer=" + answer + "]";
	}
	
}

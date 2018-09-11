package com.huxiuqianbs.pojo;

public class Choice {
	private int cid;
	private String ccet;
	private String a;
	private String b;
	private String c;
	private String d;
	private String correct;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCcet() {
		return ccet;
	}
	public void setCcet(String ccet) {
		this.ccet = ccet;
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getCorrect() {
		return correct;
	}
	public void setCorrect(String correct) {
		this.correct = correct;
	}
	@Override
	public String toString() {
		return "Choice [cid=" + cid + ", ccet=" + ccet + ", a=" + a + ", b=" + b + ", c=" + c + ", d=" + d
				+ ", correct=" + correct + "]";
	}

	
}

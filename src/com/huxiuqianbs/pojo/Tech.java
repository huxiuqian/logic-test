package com.huxiuqianbs.pojo;

import java.sql.Timestamp;

public class Tech {
	private int techid;
	private String techtopic;
	private String techcet;
	private Timestamp techtime;
	public int getTechid() {
		return techid;
	}
	public void setTechid(int techid) {
		this.techid = techid;
	}
	public String getTechtopic() {
		return techtopic;
	}
	public void setTechtopic(String techtopic) {
		this.techtopic = techtopic;
	}
	public String getTechcet() {
		return techcet;
	}
	public void setTechcet(String techcet) {
		this.techcet = techcet;
	}
	public Timestamp getTechtime() {
		return techtime;
	}
	public void setTechtime(Timestamp techtime) {
		this.techtime = techtime;
	}
	@Override
	public String toString() {
		return "Tech [techid=" + techid + ", techtopic=" + techtopic + ", techcet=" + techcet + ", techtime=" + techtime
				+ "]";
	}
	
	
}

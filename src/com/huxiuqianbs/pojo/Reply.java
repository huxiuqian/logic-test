package com.huxiuqianbs.pojo;

import java.sql.Timestamp;

public class Reply {
	private int rid;
	private int mid;
	private int id;
	private String rcet;
	private Timestamp rtime;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRcet() {
		return rcet;
	}
	public void setRcet(String rcet) {
		this.rcet = rcet;
	}
	public Timestamp getRtime() {
		return rtime;
	}
	public void setRtime(Timestamp rtime) {
		this.rtime = rtime;
	}
	@Override
	public String toString() {
		return "Reply [rid=" + rid + ", mid=" + mid + ", id=" + id + ", rcet=" + rcet + ", rtime=" + rtime + "]";
	}
	
}

package com.huxiuqianbs.pojo;

import java.sql.Timestamp;

public class Message {
	private int mid;
	private int id;
	private int tid;
	private String mtopic;
	private String mcet;
	private Timestamp mtime;
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
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getMtopic() {
		return mtopic;
	}
	public void setMtopic(String mtopic) {
		this.mtopic = mtopic;
	}
	public String getMcet() {
		return mcet;
	}
	public void setMcet(String mcet) {
		this.mcet = mcet;
	}
	public Timestamp getMtime() {
		return mtime;
	}
	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}
	@Override
	public String toString() {
		return "Message [mid=" + mid + ", id=" + id + ", tid=" + tid + ", mtopic=" + mtopic + ", mcet=" + mcet
				+ ", mtime=" + mtime + "]";
	}

}

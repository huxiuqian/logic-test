package com.huxiuqianbs.pojo;

import java.sql.Timestamp;

public class Msg {
	private int mid;
	private int id;
	private int tid;
	private String mtopic;
	private String mcet;
	private Timestamp mtime;
	private String realName;
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
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	@Override
	public String toString() {
		return "Msg [mid=" + mid + ", id=" + id + ", tid=" + tid + ", mtopic=" + mtopic + ", mcet=" + mcet + ", mtime="
				+ mtime + ", realName=" + realName + "]";
	}
	
	
}

package com.huxiuqianbs.pojo;

public class Theme {
	private int tid;
	private String theme;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	@Override
	public String toString() {
		return "Theme [tid=" + tid + ", theme=" + theme + "]";
	}
	
	
}

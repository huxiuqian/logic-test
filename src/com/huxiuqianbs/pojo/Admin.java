package com.huxiuqianbs.pojo;

public class Admin {
	private int aid;
	private String aname;
	private String apwd;
	private String arealName;
	private String atel;
	private String aemail;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getArealName() {
		return arealName;
	}
	public void setArealName(String arealName) {
		this.arealName = arealName;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", arealName=" + arealName + ", atel="
				+ atel + ", aemail=" + aemail + "]";
	}
	
	
}

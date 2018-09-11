package com.huxiuqianbs.util;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport {
	private int totalpage;
	
	private int curpage;
	
	private String href;
	
	StringWriter sw = new StringWriter();
	
	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		
		String curhref = href;
		
		if (curhref.indexOf("?") > 0){
			curhref += "&";
		}
		else {
			curhref += "?";
		}
		
		// 首页
		if (curpage <= 1){
			out.println("<a>首页<a>");
		}
		else {
			out.println("<a href=\""+curhref+"pageNum=1\">首页<a>");
		}
		// 上一�?
		if (curpage <= 1 ){
			out.println("<a>上一�?<a>");
		}
		else {
			out.println("<a href=\""+curhref+"pageNum="+(curpage-1)+"\">上一�?<a>");
		}
		// 当前页面/总页�?
		out.println(curpage + "/" + totalpage);
		// 下一�?
		if (curpage < totalpage ){
			out.println("<a href=\""+curhref+"pageNum="+(curpage+1)+"\">下一�?<a>");
		}
		else {
			out.println("<a>下一�?<a>");
		}
		// 尾页
		if (curpage < totalpage ){
			out.println("<a href=\""+curhref+"pageNum="+totalpage+"\">尾页<a>");
		}
		else {
			out.println("<a>尾页<a>");
		}
		
	}

	public int getTotalpage() {
		return totalpage;
	}

	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}

	public int getCurpage() {
		return curpage;
	}

	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}
}

package com.huxiuqianbs.plugin.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Page {
	//当前页
	private int curPage = 1;
	// 总页数
	private int totalPage;
	// 数据库记录数
	private int rows;
	// 每页数据量
	private int pageNumber = 5;
	// 要展示的List数据
	private List data = new ArrayList();
	// 查询条件
	private Map<String, Object> criteria = new HashMap<>();

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
		this.totalPage = (rows-1) / pageNumber + 1;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

	public Map<String, Object> getCriteria() {
		return criteria;
	}

	public void setCriteria(Map<String, Object> criteria) {
		this.criteria = criteria;
	}

	@Override
	public String toString() {
		return "Page [curPage=" + curPage + ",\n totalPage=" + totalPage + ",\n rows=" + rows + ",\n pageNumber=" + pageNumber
				+ ",\n data=" + data + ",\n criteria=" + criteria + "\n]";
	}
}

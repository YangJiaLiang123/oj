package com.etc.bean;

public class Page {

	private int pageSize;          //每页查询数量
	private int CurrentPage;       //当前页数
	private int startRow;          //每页查询开始行
	private String queryCondition; //查询条件
	private int totalPage;         //总页数
	private int totalRows;         //总条数
	
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageSize() {
		return pageSize;
	}
	public int getCurrentPage() {
		return CurrentPage;
	}

	public void setCurrentPage(int curPage) {
		this.CurrentPage = curPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public String getQueryCondition() {
		return queryCondition;
	}

	public void setQueryCondition(String queryCondition) {
		this.queryCondition = queryCondition;
	}
	
	public void setTotalPage(int totalPages) {
		this.totalPage = totalPages;
	}
	
	public int getTotalPage() {
		return totalPage;
	}
	
	public void setTotalRows(Integer totalCounts) {
		this.totalRows = totalCounts;	
	}

	public int getTotalRows() {
		return totalRows;
	}
}

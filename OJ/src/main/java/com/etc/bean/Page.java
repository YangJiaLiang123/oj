package com.etc.bean;

public class Page {

	private int pageSize;          //ÿҳ��ѯ����
	private int CurrentPage;       //��ǰҳ��
	private int startRow;          //ÿҳ��ѯ��ʼ��
	private String queryCondition; //��ѯ����
	private int totalPage;         //��ҳ��
	private int totalRows;         //������
	
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

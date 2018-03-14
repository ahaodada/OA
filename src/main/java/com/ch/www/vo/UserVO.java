package com.ch.www.vo;

import java.util.List;

public class UserVO<T> {
   
	private long total;// 总数量
	private List<T> rows;// 数据的集合

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

}

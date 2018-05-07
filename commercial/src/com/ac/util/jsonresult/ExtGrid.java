package com.ac.util.jsonresult;

import java.util.List;

public class ExtGrid<T> implements JsonResult {
	private List<T> invdata;
	private int total;
	
	public ExtGrid() {
	}
	
	public ExtGrid(List<T> invdata) {
		this.invdata = invdata;
		this.total = invdata.size();
	}
	
	public ExtGrid(List<T> invdata, int total) {
		this.invdata = invdata;
		this.total = total;
	}
	
	public List<T> getInvdata() {
		return invdata;
	}
	public void setInvdata(List<T> invdata) {
		this.invdata = invdata;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}

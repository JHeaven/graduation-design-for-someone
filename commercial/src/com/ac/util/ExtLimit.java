package com.ac.util;

import java.io.Serializable;
import java.util.regex.Pattern;

public class ExtLimit implements Serializable {
	private static final long serialVersionUID = 1L;
	static String reg = "(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)"; 
	static Pattern sqlPattern = Pattern.compile(reg, Pattern.CASE_INSENSITIVE);
	
	private Integer limit;// 显示记录数
	private Integer start;// 开始
	private String sort;// 排序列
	private String dir;// 排序方式 ASC DESC

	private String exp_name;// 导出文件名称
	private String exp_type;// 导出文件类型
	private String exp_column_names;// 导出头信息
	private String exp_column_indexs;// 导出列字段

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public String getDir() throws Exception {
		if(null != this.dir && (!"ASC".equals(this.dir.toUpperCase()) && !"DESC".equals(this.dir.toUpperCase()))) {
			throw new Exception("排序方式非法！");
		}
		return dir;
	}

	public void setDir(String dir) {
		this.dir = dir;
	}

	public String getSort() throws Exception {
		if(null != this.sort && sqlPattern.matcher(this.sort.toLowerCase()).find()) {
			throw new Exception("非法SQL注入字符！");
		}
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getExp_name() {
		return exp_name;
	}

	public void setExp_name(String expName) {
		exp_name = expName;
	}

	public String getExp_type() {
		return exp_type;
	}

	public void setExp_type(String expType) {
		exp_type = expType;
	}

	public String getExp_column_names() {
		return exp_column_names;
	}

	public void setExp_column_names(String expColumnNames) {
		exp_column_names = expColumnNames;
	}

	public String getExp_column_indexs() {
		return exp_column_indexs;
	}

	public void setExp_column_indexs(String expColumnIndexs) {
		exp_column_indexs = expColumnIndexs;
	}
}

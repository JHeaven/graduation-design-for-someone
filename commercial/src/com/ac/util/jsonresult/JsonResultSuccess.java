package com.ac.util.jsonresult;

public class JsonResultSuccess<T> implements JsonResult {
public T data;
	
	private String result = "success";
	private boolean success = true;
	
	public JsonResultSuccess(T bean) {
		this.data = bean;
	}
	public JsonResultSuccess() {
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
}

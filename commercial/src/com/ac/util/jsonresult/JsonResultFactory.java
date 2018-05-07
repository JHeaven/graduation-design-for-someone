package com.ac.util.jsonresult;

import java.util.List;

public class JsonResultFactory {

	public static<T> JsonResult extgrid(List<T> invdata) {
		return new ExtGrid<T>(invdata);
	}
	public static<T> JsonResult extgrid(List<T> invdata, int total) {
		return new ExtGrid<T>(invdata, total);
	}
	
	public static<T> JsonResult success(T bean) {
		return new JsonResultSuccess<T>(bean);
	}
	
	public static<T> JsonResult success() {
		return new JsonResultSuccess<T>();
	}
	
	public static<T> JsonResult error(String info) {
		return new JsonResultError(info);
	}
}

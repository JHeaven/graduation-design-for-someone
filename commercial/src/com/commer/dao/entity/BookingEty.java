package com.commer.dao.entity;

import com.fasterxml.jackson.annotation.JsonFormat;


import com.ac.base.dao.BaseEntity;

public class BookingEty extends BaseEntity {
	private Integer bookingID;	//预约ID
	private String bookingName;	//客户姓名
	private String bookingTel;	//客户电话

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date bookingDate;	//预约看房时间
	private String bookingtype;	//预约类型
	private String bookingfloorUnitnumber;	//预约楼号单元
	private String bookinginformation;	//预约其他信息
	private String bookingShoppingName;	//导购员名
	/**
	* 得到 预约ID
	* @return Integer
	*/
	public Integer getBookingID() {
		return this.bookingID;
	}
	/**
	 * 设置 预约ID
	 * @param bookingID,  : Integer
	*/
	public void setBookingID(Integer bookingID) {
		this.bookingID = bookingID;
	}

	/**
	* 得到 客户姓名
	* @return String
	*/
	public String getBookingName() {
		return this.bookingName;
	}
	/**
	 * 设置 客户姓名
	 * @param bookingName,  : String
	*/
	public void setBookingName(String bookingName) {
		this.bookingName = bookingName;
	}

	/**
	* 得到 客户电话
	* @return String
	*/
	public String getBookingTel() {
		return this.bookingTel;
	}
	/**
	 * 设置 客户电话
	 * @param bookingTel,  : String
	*/
	public void setBookingTel(String bookingTel) {
		this.bookingTel = bookingTel;
	}

	/**
	* 得到 预约看房时间
	* @return java.util.Date
	*/
	public java.util.Date getBookingDate() {
		return this.bookingDate;
	}
	/**
	 * 设置 预约看房时间
	 * @param bookingDate,  : java.util.Date
	*/
	public void setBookingDate(java.util.Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	/**
	* 得到 预约类型
	* @return String
	*/
	public String getBookingtype() {
		return this.bookingtype;
	}
	/**
	 * 设置 预约类型
	 * @param bookingtype,  : String
	*/
	public void setBookingtype(String bookingtype) {
		this.bookingtype = bookingtype;
	}

	/**
	* 得到 预约楼号单元
	* @return String
	*/
	public String getBookingfloorUnitnumber() {
		return this.bookingfloorUnitnumber;
	}
	/**
	 * 设置 预约楼号单元
	 * @param bookingfloorUnitnumber,  : String
	*/
	public void setBookingfloorUnitnumber(String bookingfloorUnitnumber) {
		this.bookingfloorUnitnumber = bookingfloorUnitnumber;
	}

	/**
	* 得到 预约其他信息
	* @return String
	*/
	public String getBookinginformation() {
		return this.bookinginformation;
	}
	/**
	 * 设置 预约其他信息
	 * @param bookinginformation,  : String
	*/
	public void setBookinginformation(String bookinginformation) {
		this.bookinginformation = bookinginformation;
	}

	/**
	* 得到 导购员名
	* @return String
	*/
	public String getBookingShoppingName() {
		return this.bookingShoppingName;
	}
	/**
	 * 设置 导购员名
	 * @param bookingShoppingName,  : String
	*/
	public void setBookingShoppingName(String bookingShoppingName) {
		this.bookingShoppingName = bookingShoppingName;
	}

}
package com.commer.dao.entity;

import com.fasterxml.jackson.annotation.JsonFormat;


import com.ac.base.dao.BaseEntity;

public class CommercialEty extends BaseEntity {
	private Integer commercialID;	//商品房ID
	private String commercialtype;	//商品房类型
	private String commercialfloor;	//楼层
	private String commercialfloorUnitnumber;
	private String commercialtotalArea;	//总面积
	private String commercialtotalUseArea;	//使用面积
	private String commercialPrice;	//m²价格

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date commercialDate;	//上架时间
	private String commercialConter;	//房屋其他描述
	private String commercialtotalflag;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date bookingDate;	//预约看房时间

	private String bookinginformation;	//预约其他信息
	
	private String bookingTel;
	
	public String getBookingTel() {
		return bookingTel;
	}
	public void setBookingTel(String bookingTel) {
		this.bookingTel = bookingTel;
	}
	/**
	* 得到 商品房ID
	* @return Integer
	*/
	public Integer getCommercialID() {
		return this.commercialID;
	}
	/**
	 * 设置 商品房ID
	 * @param commercialID,  : Integer
	*/
	public void setCommercialID(Integer commercialID) {
		this.commercialID = commercialID;
	}

	/**
	* 得到 商品房类型
	* @return String
	*/
	public String getCommercialtype() {
		return this.commercialtype;
	}
	/**
	 * 设置 商品房类型
	 * @param commercialtype,  : String
	*/
	public void setCommercialtype(String commercialtype) {
		this.commercialtype = commercialtype;
	}

	/**
	* 得到 楼层
	* @return String
	*/
	public String getCommercialfloor() {
		return this.commercialfloor;
	}
	/**
	 * 设置 楼层
	 * @param commercialfloor,  : String
	*/
	public void setCommercialfloor(String commercialfloor) {
		this.commercialfloor = commercialfloor;
	}

	public String getCommercialfloorUnitnumber() {
		return this.commercialfloorUnitnumber;
	}
	public void setCommercialfloorUnitnumber(String commercialfloorUnitnumber) {
		this.commercialfloorUnitnumber = commercialfloorUnitnumber;
	}

	/**
	* 得到 总面积
	* @return String
	*/
	public String getCommercialtotalArea() {
		return this.commercialtotalArea;
	}
	/**
	 * 设置 总面积
	 * @param commercialtotalArea,  : String
	*/
	public void setCommercialtotalArea(String commercialtotalArea) {
		this.commercialtotalArea = commercialtotalArea;
	}

	/**
	* 得到 使用面积
	* @return String
	*/
	public String getCommercialtotalUseArea() {
		return this.commercialtotalUseArea;
	}
	/**
	 * 设置 使用面积
	 * @param commercialtotalUseArea,  : String
	*/
	public void setCommercialtotalUseArea(String commercialtotalUseArea) {
		this.commercialtotalUseArea = commercialtotalUseArea;
	}

	/**
	* 得到 m²价格
	* @return String
	*/
	public String getCommercialPrice() {
		return this.commercialPrice;
	}
	/**
	 * 设置 m²价格
	 * @param commercialPrice,  : String
	*/
	public void setCommercialPrice(String commercialPrice) {
		this.commercialPrice = commercialPrice;
	}

	/**
	* 得到 上架时间
	* @return java.util.Date
	*/
	public java.util.Date getCommercialDate() {
		return this.commercialDate;
	}
	/**
	 * 设置 上架时间
	 * @param commercialDate,  : java.util.Date
	*/
	public void setCommercialDate(java.util.Date commercialDate) {
		this.commercialDate = commercialDate;
	}

	/**
	* 得到 房屋其他描述
	* @return String
	*/
	public String getCommercialConter() {
		return this.commercialConter;
	}
	/**
	 * 设置 房屋其他描述
	 * @param commercialConter,  : String
	*/
	public void setCommercialConter(String commercialConter) {
		this.commercialConter = commercialConter;
	}

	public String getCommercialtotalflag() {
		return this.commercialtotalflag;
	}
	public void setCommercialtotalflag(String commercialtotalflag) {
		this.commercialtotalflag = commercialtotalflag;
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

	
	
}
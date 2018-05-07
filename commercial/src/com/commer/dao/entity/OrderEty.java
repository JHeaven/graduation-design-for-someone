package com.commer.dao.entity;

import com.fasterxml.jackson.annotation.JsonFormat;


import com.ac.base.dao.BaseEntity;

public class OrderEty extends BaseEntity {
	private Integer orderID;	//订单编号
	private String orderName;	//订单人姓名
	private Integer orderTel;	//订单电话
	private String orderBuildingaddress;	//订购房屋地址

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date orderDate;	//订单时间
	private String ordermoney;	//定金
	private String orderPaymentMethod;	//付款方式
	private String orderSpecialAgreement;	//特别约定
	/**
	* 得到 订单编号
	* @return Integer
	*/
	public Integer getOrderID() {
		return this.orderID;
	}
	/**
	 * 设置 订单编号
	 * @param orderID,  : Integer
	*/
	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}

	/**
	* 得到 订单人姓名
	* @return String
	*/
	public String getOrderName() {
		return this.orderName;
	}
	/**
	 * 设置 订单人姓名
	 * @param orderName,  : String
	*/
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	/**
	* 得到 订单电话
	* @return Integer
	*/
	public Integer getOrderTel() {
		return this.orderTel;
	}
	/**
	 * 设置 订单电话
	 * @param orderTel,  : Integer
	*/
	public void setOrderTel(Integer orderTel) {
		this.orderTel = orderTel;
	}

	/**
	* 得到 订购房屋地址
	* @return String
	*/
	public String getOrderBuildingaddress() {
		return this.orderBuildingaddress;
	}
	/**
	 * 设置 订购房屋地址
	 * @param orderBuildingaddress,  : String
	*/
	public void setOrderBuildingaddress(String orderBuildingaddress) {
		this.orderBuildingaddress = orderBuildingaddress;
	}

	/**
	* 得到 订单时间
	* @return java.util.Date
	*/
	public java.util.Date getOrderDate() {
		return this.orderDate;
	}
	/**
	 * 设置 订单时间
	 * @param orderDate,  : java.util.Date
	*/
	public void setOrderDate(java.util.Date orderDate) {
		this.orderDate = orderDate;
	}

	/**
	* 得到 定金
	* @return String
	*/
	public String getOrdermoney() {
		return this.ordermoney;
	}
	/**
	 * 设置 定金
	 * @param ordermoney,  : String
	*/
	public void setOrdermoney(String ordermoney) {
		this.ordermoney = ordermoney;
	}

	/**
	* 得到 付款方式
	* @return String
	*/
	public String getOrderPaymentMethod() {
		return this.orderPaymentMethod;
	}
	/**
	 * 设置 付款方式
	 * @param orderPaymentMethod,  : String
	*/
	public void setOrderPaymentMethod(String orderPaymentMethod) {
		this.orderPaymentMethod = orderPaymentMethod;
	}

	/**
	* 得到 特别约定
	* @return String
	*/
	public String getOrderSpecialAgreement() {
		return this.orderSpecialAgreement;
	}
	/**
	 * 设置 特别约定
	 * @param orderSpecialAgreement,  : String
	*/
	public void setOrderSpecialAgreement(String orderSpecialAgreement) {
		this.orderSpecialAgreement = orderSpecialAgreement;
	}

}
package com.commer.dao.entity;

import com.ac.base.dao.BaseEntity;

public class ShoppingguideEty extends BaseEntity {
	private Integer shoppingID;	//导购员ID
	private String shoppingName;	//导购员名称
	private String shoppingTEL;	//导购员电话
	private Integer shoppingAge;	//年龄
	private String shoppingsex;	//性别
	private String customername;	//客户名称
	private String shoppingintention;	//购买意向
	private String shoppingCustomerinfor;	//客户沟通记录
	/**
	* 得到 导购员ID
	* @return Integer
	*/
	public Integer getShoppingID() {
		return this.shoppingID;
	}
	/**
	 * 设置 导购员ID
	 * @param shoppingID,  : Integer
	*/
	public void setShoppingID(Integer shoppingID) {
		this.shoppingID = shoppingID;
	}

	/**
	* 得到 导购员名称
	* @return String
	*/
	public String getShoppingName() {
		return this.shoppingName;
	}
	/**
	 * 设置 导购员名称
	 * @param shoppingName,  : String
	*/
	public void setShoppingName(String shoppingName) {
		this.shoppingName = shoppingName;
	}

	/**
	* 得到 导购员电话
	* @return String
	*/
	public String getShoppingTEL() {
		return this.shoppingTEL;
	}
	/**
	 * 设置 导购员电话
	 * @param shoppingTEL,  : String
	*/
	public void setShoppingTEL(String shoppingTEL) {
		this.shoppingTEL = shoppingTEL;
	}

	/**
	* 得到 年龄
	* @return Integer
	*/
	public Integer getShoppingAge() {
		return this.shoppingAge;
	}
	/**
	 * 设置 年龄
	 * @param shoppingAge,  : Integer
	*/
	public void setShoppingAge(Integer shoppingAge) {
		this.shoppingAge = shoppingAge;
	}

	/**
	* 得到 性别
	* @return String
	*/
	public String getShoppingsex() {
		return this.shoppingsex;
	}
	/**
	 * 设置 性别
	 * @param shoppingsex,  : String
	*/
	public void setShoppingsex(String shoppingsex) {
		this.shoppingsex = shoppingsex;
	}

	/**
	* 得到 客户名称
	* @return String
	*/
	public String getCustomername() {
		return this.customername;
	}
	/**
	 * 设置 客户名称
	 * @param customername,  : String
	*/
	public void setCustomername(String customername) {
		this.customername = customername;
	}

	/**
	* 得到 购买意向
	* @return String
	*/
	public String getShoppingintention() {
		return this.shoppingintention;
	}
	/**
	 * 设置 购买意向
	 * @param shoppingintention,  : String
	*/
	public void setShoppingintention(String shoppingintention) {
		this.shoppingintention = shoppingintention;
	}

	/**
	* 得到 客户沟通记录
	* @return String
	*/
	public String getShoppingCustomerinfor() {
		return this.shoppingCustomerinfor;
	}
	/**
	 * 设置 客户沟通记录
	 * @param shoppingCustomerinfor,  : String
	*/
	public void setShoppingCustomerinfor(String shoppingCustomerinfor) {
		this.shoppingCustomerinfor = shoppingCustomerinfor;
	}

}
package com.commer.dao.entity;

import com.fasterxml.jackson.annotation.JsonFormat;


import com.ac.base.dao.BaseEntity;

public class AdminpeopleEty extends BaseEntity {
	private Integer adminPeopleID;	//管理员ID
	private String adminPeopleName;	//管理员名
	private String adminPeoplePassword;	//管理员密码
	private Integer adminPeopleAge;	//年龄
	private String adminPeopleSex;	//性别
	private String adminPeopleFlag;	//职位区分
	private String adminMail;	//管理员邮箱
	private String adminTEL;	//管理员电话

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date createTime;	//创建时间
	private String createPeople;	//创建者

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd" , timezone="GMT+8")
	private java.util.Date updateTime;	//修改时间
	private String updatePeople;	//修改者
	/**
	* 得到 管理员ID
	* @return Integer
	*/
	public Integer getAdminPeopleID() {
		return this.adminPeopleID;
	}
	/**
	 * 设置 管理员ID
	 * @param adminPeopleID,  : Integer
	*/
	public void setAdminPeopleID(Integer adminPeopleID) {
		this.adminPeopleID = adminPeopleID;
	}

	/**
	* 得到 管理员名
	* @return String
	*/
	public String getAdminPeopleName() {
		return this.adminPeopleName;
	}
	/**
	 * 设置 管理员名
	 * @param adminPeopleName,  : String
	*/
	public void setAdminPeopleName(String adminPeopleName) {
		this.adminPeopleName = adminPeopleName;
	}

	/**
	* 得到 管理员密码
	* @return String
	*/
	public String getAdminPeoplePassword() {
		return this.adminPeoplePassword;
	}
	/**
	 * 设置 管理员密码
	 * @param adminPeoplePassword,  : String
	*/
	public void setAdminPeoplePassword(String adminPeoplePassword) {
		this.adminPeoplePassword = adminPeoplePassword;
	}

	/**
	* 得到 年龄
	* @return Integer
	*/
	public Integer getAdminPeopleAge() {
		return this.adminPeopleAge;
	}
	/**
	 * 设置 年龄
	 * @param adminPeopleAge,  : Integer
	*/
	public void setAdminPeopleAge(Integer adminPeopleAge) {
		this.adminPeopleAge = adminPeopleAge;
	}

	/**
	* 得到 性别
	* @return String
	*/
	public String getAdminPeopleSex() {
		return this.adminPeopleSex;
	}
	/**
	 * 设置 性别
	 * @param adminPeopleSex,  : String
	*/
	public void setAdminPeopleSex(String adminPeopleSex) {
		this.adminPeopleSex = adminPeopleSex;
	}

	/**
	* 得到 职位区分
	* @return String
	*/
	public String getAdminPeopleFlag() {
		return this.adminPeopleFlag;
	}
	/**
	 * 设置 职位区分
	 * @param adminPeopleFlag,  : String
	*/
	public void setAdminPeopleFlag(String adminPeopleFlag) {
		this.adminPeopleFlag = adminPeopleFlag;
	}

	/**
	* 得到 管理员邮箱
	* @return String
	*/
	public String getAdminMail() {
		return this.adminMail;
	}
	/**
	 * 设置 管理员邮箱
	 * @param adminMail,  : String
	*/
	public void setAdminMail(String adminMail) {
		this.adminMail = adminMail;
	}

	/**
	* 得到 管理员电话
	* @return String
	*/
	public String getAdminTEL() {
		return this.adminTEL;
	}
	/**
	 * 设置 管理员电话
	 * @param adminTEL,  : String
	*/
	public void setAdminTEL(String adminTEL) {
		this.adminTEL = adminTEL;
	}

	/**
	* 得到 创建时间
	* @return java.util.Date
	*/
	public java.util.Date getCreateTime() {
		return this.createTime;
	}
	/**
	 * 设置 创建时间
	 * @param createTime,  : java.util.Date
	*/
	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}

	/**
	* 得到 创建者
	* @return String
	*/
	public String getCreatePeople() {
		return this.createPeople;
	}
	/**
	 * 设置 创建者
	 * @param createPeople,  : String
	*/
	public void setCreatePeople(String createPeople) {
		this.createPeople = createPeople;
	}

	/**
	* 得到 修改时间
	* @return java.util.Date
	*/
	public java.util.Date getUpdateTime() {
		return this.updateTime;
	}
	/**
	 * 设置 修改时间
	 * @param updateTime,  : java.util.Date
	*/
	public void setUpdateTime(java.util.Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	* 得到 修改者
	* @return String
	*/
	public String getUpdatePeople() {
		return this.updatePeople;
	}
	/**
	 * 设置 修改者
	 * @param updatePeople,  : String
	*/
	public void setUpdatePeople(String updatePeople) {
		this.updatePeople = updatePeople;
	}

}
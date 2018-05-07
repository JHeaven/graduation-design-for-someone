package com.commer.dao.entity;

import com.ac.base.dao.BaseEntity;

public class UserpeopleEty extends BaseEntity {
	private Integer userPeopleID;	//用户ID
	private String userpeopleName;	//用户名
	private String userpeopleMail;	//用户邮箱
	private String userpeopleTEL;
	private Integer userPeopleAge;	//年龄
	private String userPeoplesex;	//性别
	private String userPeoplePasswrod;	//用户密码
	
	/**
	* 得到 用户ID
	* @return Integer
	*/
	public Integer getUserPeopleID() {
		return this.userPeopleID;
	}
	/**
	 * 设置 用户ID
	 * @param userPeopleID,  : Integer
	*/
	public void setUserPeopleID(Integer userPeopleID) {
		this.userPeopleID = userPeopleID;
	}

	/**
	* 得到 用户名
	* @return String
	*/
	public String getUserpeopleName() {
		return this.userpeopleName;
	}
	/**
	 * 设置 用户名
	 * @param userpeopleName,  : String
	*/
	public void setUserpeopleName(String userpeopleName) {
		this.userpeopleName = userpeopleName;
	}

	/**
	* 得到 用户邮箱
	* @return String
	*/
	public String getUserpeopleMail() {
		return this.userpeopleMail;
	}
	/**
	 * 设置 用户邮箱
	 * @param userpeopleMail,  : String
	*/
	public void setUserpeopleMail(String userpeopleMail) {
		this.userpeopleMail = userpeopleMail;
	}

	public String getUserpeopleTEL() {
		return this.userpeopleTEL;
	}
	public void setUserpeopleTEL(String userpeopleTEL) {
		this.userpeopleTEL = userpeopleTEL;
	}

	/**
	* 得到 年龄
	* @return Integer
	*/
	public Integer getUserPeopleAge() {
		return this.userPeopleAge;
	}
	/**
	 * 设置 年龄
	 * @param userPeopleAge,  : Integer
	*/
	public void setUserPeopleAge(Integer userPeopleAge) {
		this.userPeopleAge = userPeopleAge;
	}

	/**
	* 得到 性别
	* @return String
	*/
	public String getUserPeoplesex() {
		return this.userPeoplesex;
	}
	/**
	 * 设置 性别
	 * @param userPeoplesex,  : String
	*/
	public void setUserPeoplesex(String userPeoplesex) {
		this.userPeoplesex = userPeoplesex;
	}

	/**
	* 得到 用户密码
	* @return String
	*/
	public String getUserPeoplePasswrod() {
		return this.userPeoplePasswrod;
	}
	/**
	 * 设置 用户密码
	 * @param userPeoplePasswrod,  : String
	*/
	public void setUserPeoplePasswrod(String userPeoplePasswrod) {
		this.userPeoplePasswrod = userPeoplePasswrod;
	}

}
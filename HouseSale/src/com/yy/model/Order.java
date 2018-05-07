package com.yy.model;

import java.util.List;

public class Order {
    private Integer id;

    private Integer userId;

    private String address;
    
    private String heTong;

    private String phone;

    private String zipcode;

    private String name;

    private String ps;

    private String content;

    private Integer deleted;
    
    private List<OrderDetail> allDetail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode == null ? null : zipcode.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

	public List<OrderDetail> getAllDetail() {
		return allDetail;
	}

	public void setAllDetail(List<OrderDetail> allDetail) {
		this.allDetail = allDetail;
	}

	public String getHeTong() {
		return heTong;
	}

	public void setHeTong(String heTong) {
		this.heTong = heTong;
	}
    
    
}
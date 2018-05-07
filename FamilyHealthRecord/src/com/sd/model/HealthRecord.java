package com.sd.model;

import java.util.Date;

public class HealthRecord {
    private Integer id;

    private Integer userId;

    private String name;

    private String sex;

    private Date birth;

    private String phone;

    private Integer height;

    private Integer weight;

    private String xuexing;

    private String address;

    private String jiaTingBingShi;

    private String jiWangBingShi;

    private String xianYouBingShi;

    private String zhiLiaoJiLu;

    private String zhiYeJingLi;

    private String shengHuoXiGuan;

    private String yingShiXiGuan;

    private String ps;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getXuexing() {
        return xuexing;
    }

    public void setXuexing(String xuexing) {
        this.xuexing = xuexing == null ? null : xuexing.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getJiaTingBingShi() {
        return jiaTingBingShi;
    }

    public void setJiaTingBingShi(String jiaTingBingShi) {
        this.jiaTingBingShi = jiaTingBingShi == null ? null : jiaTingBingShi.trim();
    }

    public String getJiWangBingShi() {
        return jiWangBingShi;
    }

    public void setJiWangBingShi(String jiWangBingShi) {
        this.jiWangBingShi = jiWangBingShi == null ? null : jiWangBingShi.trim();
    }

    public String getXianYouBingShi() {
        return xianYouBingShi;
    }

    public void setXianYouBingShi(String xianYouBingShi) {
        this.xianYouBingShi = xianYouBingShi == null ? null : xianYouBingShi.trim();
    }

    public String getZhiLiaoJiLu() {
        return zhiLiaoJiLu;
    }

    public void setZhiLiaoJiLu(String zhiLiaoJiLu) {
        this.zhiLiaoJiLu = zhiLiaoJiLu == null ? null : zhiLiaoJiLu.trim();
    }

    public String getZhiYeJingLi() {
        return zhiYeJingLi;
    }

    public void setZhiYeJingLi(String zhiYeJingLi) {
        this.zhiYeJingLi = zhiYeJingLi == null ? null : zhiYeJingLi.trim();
    }

    public String getShengHuoXiGuan() {
        return shengHuoXiGuan;
    }

    public void setShengHuoXiGuan(String shengHuoXiGuan) {
        this.shengHuoXiGuan = shengHuoXiGuan == null ? null : shengHuoXiGuan.trim();
    }

    public String getYingShiXiGuan() {
        return yingShiXiGuan;
    }

    public void setYingShiXiGuan(String yingShiXiGuan) {
        this.yingShiXiGuan = yingShiXiGuan == null ? null : yingShiXiGuan.trim();
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

	@Override
	public String toString() {
		return "HealthRecord [id=" + id + ", userId=" + userId + ", name=" + name + ", sex=" + sex + ", birth=" + birth
				+ ", phone=" + phone + ", height=" + height + ", weight=" + weight + ", xuexing=" + xuexing
				+ ", address=" + address + ", jiaTingBingShi=" + jiaTingBingShi + ", jiWangBingShi=" + jiWangBingShi
				+ ", xianYouBingShi=" + xianYouBingShi + ", zhiLiaoJiLu=" + zhiLiaoJiLu + ", zhiYeJingLi=" + zhiYeJingLi
				+ ", shengHuoXiGuan=" + shengHuoXiGuan + ", yingShiXiGuan=" + yingShiXiGuan + ", ps=" + ps + "]";
	}
    
    
}
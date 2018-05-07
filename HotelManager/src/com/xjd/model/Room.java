package com.xjd.model;

import java.util.Date;

public class Room {
    private Integer id;

    private String name;

    private Integer price;

    private Date serviceTime;

    private String type;

    private Integer areas;//£¬Ãæ»ù

    private String hasTv;

    private String hasPhone;

    private String hasAir;

    private Integer peopleNum;

    private String ps;

    private Integer deleted;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Date getServiceTime() {
        return serviceTime;
    }

    public void setServiceTime(Date serviceTime) {
        this.serviceTime = serviceTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getAreas() {
        return areas;
    }

    public void setAreas(Integer areas) {
        this.areas = areas;
    }

    public String getHasTv() {
        return hasTv;
    }

    public void setHasTv(String hasTv) {
        this.hasTv = hasTv == null ? null : hasTv.trim();
    }

    public String getHasPhone() {
        return hasPhone;
    }

    public void setHasPhone(String hasPhone) {
        this.hasPhone = hasPhone == null ? null : hasPhone.trim();
    }

    public String getHasAir() {
        return hasAir;
    }

    public void setHasAir(String hasAir) {
        this.hasAir = hasAir == null ? null : hasAir.trim();
    }

    public Integer getPeopleNum() {
        return peopleNum;
    }

    public void setPeopleNum(Integer peopleNum) {
        this.peopleNum = peopleNum;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
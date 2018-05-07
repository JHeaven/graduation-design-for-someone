package com.maheng.model;

import java.util.Date;

public class Check {
    private Integer id;

    private Integer staffId;

    private Date startDate;

    private Date endDate;

    private Integer process;

    private Integer goutongSc;

    private Integer zhixingSc;

    private Integer xinliSc;

    private Integer shijianSc;

    private Integer zhiyeSc;

    private Integer pinzhiSc;

    private Integer jishuSc;

    private String remark;

    private String name;
    
    private String email;
    
    private String telphone;
    
    private String inpostType;
    
    private Integer maxSc;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getProcess() {
        return process;
    }

    public void setProcess(Integer process) {
        this.process = process;
    }

    public Integer getGoutongSc() {
        return goutongSc;
    }

    public void setGoutongSc(Integer goutongSc) {
        this.goutongSc = goutongSc;
    }

    public Integer getZhixingSc() {
        return zhixingSc;
    }

    public void setZhixingSc(Integer zhixingSc) {
        this.zhixingSc = zhixingSc;
    }

    public Integer getXinliSc() {
        return xinliSc;
    }

    public void setXinliSc(Integer xinliSc) {
        this.xinliSc = xinliSc;
    }

    public Integer getShijianSc() {
        return shijianSc;
    }

    public void setShijianSc(Integer shijianSc) {
        this.shijianSc = shijianSc;
    }

    public Integer getZhiyeSc() {
        return zhiyeSc;
    }

    public void setZhiyeSc(Integer zhiyeSc) {
        this.zhiyeSc = zhiyeSc;
    }

    public Integer getPinzhiSc() {
        return pinzhiSc;
    }

    public void setPinzhiSc(Integer pinzhiSc) {
        this.pinzhiSc = pinzhiSc;
    }

    public Integer getJishuSc() {
        return jishuSc;
    }

    public void setJishuSc(Integer jishuSc) {
        this.jishuSc = jishuSc;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getInpostType() {
		return inpostType;
	}

	public void setInpostType(String inpostType) {
		this.inpostType = inpostType;
	}

	public Integer getMaxSc() {
		return maxSc;
	}

	public void setMaxSc(Integer maxSc) {
		this.maxSc = maxSc;
	}

	@Override
	public String toString() {
		return "Check [id=" + id + ", staffId=" + staffId + ", startDate="
				+ startDate + ", endDate=" + endDate + ", process=" + process
				+ ", goutongSc=" + goutongSc + ", zhixingSc=" + zhixingSc
				+ ", xinliSc=" + xinliSc + ", shijianSc=" + shijianSc
				+ ", zhiyeSc=" + zhiyeSc + ", pinzhiSc=" + pinzhiSc
				+ ", jishuSc=" + jishuSc + ", remark=" + remark + ", name="
				+ name + ", email=" + email + ", telphone=" + telphone
				+ ", inpostType=" + inpostType + ", maxSc=" + maxSc + "]";
	}

	
	
    
}
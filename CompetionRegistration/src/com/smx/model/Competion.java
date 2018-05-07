package com.smx.model;

import java.util.Date;

public class Competion {
    private Integer id;

    private String name;

    private String ps;

    private String status;

    private Date fromTime;

    private Date toTime;

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

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getFromTime() {
        return fromTime;
    }

    public void setFromTime(Date fromTime) {
        this.fromTime = fromTime;
    }

    public Date getToTime() {
        return toTime;
    }

    public void setToTime(Date toTime) {
        this.toTime = toTime;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

	@Override
	public String toString() {
		return "Competion [id=" + id + ", name=" + name + ", ps=" + ps + ", status=" + status + ", fromTime=" + fromTime
				+ ", toTime=" + toTime + ", deleted=" + deleted + "]";
	}
    
    
}
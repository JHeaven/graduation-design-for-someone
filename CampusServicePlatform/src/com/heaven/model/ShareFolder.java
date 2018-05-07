package com.heaven.model;

import java.util.Date;

public class ShareFolder {
    private Integer id;

    private Integer userId;

    private String sharefolderName;

    private String sharefolderDesc;

    private Date outTime;

    private User user;
    
    private String color;
    
    private Integer isdelete;
    
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

    public String getSharefolderName() {
        return sharefolderName;
    }

    public void setSharefolderName(String sharefolderName) {
        this.sharefolderName = sharefolderName == null ? null : sharefolderName.trim();
    }

    public String getSharefolderDesc() {
        return sharefolderDesc;
    }

    public void setSharefolderDesc(String sharefolderDesc) {
        this.sharefolderDesc = sharefolderDesc == null ? null : sharefolderDesc.trim();
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	
	public Integer getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	@Override
	public String toString() {
		return "ShareFolder [id=" + id + ", userId=" + userId
				+ ", sharefolderName=" + sharefolderName + ", sharefolderDesc="
				+ sharefolderDesc + ", outTime=" + outTime + ", user=" + user
				+ ", color=" + color + "]";
	}
    
}
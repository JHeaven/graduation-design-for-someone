package com.heaven.model;

import java.util.Date;

public class ShareFile {
    private Integer id;

    private Integer userId;

    private Integer sharefolderId;

    private String sharefileName;

    private String sharefilePath;

    private String shatefileSize;

    private String sharefileType;

    private Date outTime;

    private User user;
    
    private Integer isdelete;

    private String color;
    
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

    public Integer getSharefolderId() {
        return sharefolderId;
    }

    public void setSharefolderId(Integer sharefolderId) {
        this.sharefolderId = sharefolderId;
    }

    public String getSharefileName() {
        return sharefileName;
    }

    public void setSharefileName(String sharefileName) {
        this.sharefileName = sharefileName == null ? null : sharefileName.trim();
    }

    public String getSharefilePath() {
        return sharefilePath;
    }

    public void setSharefilePath(String sharefilePath) {
        this.sharefilePath = sharefilePath == null ? null : sharefilePath.trim();
    }

    public String getShatefileSize() {
        return shatefileSize;
    }

    public void setShatefileSize(String shatefileSize) {
        this.shatefileSize = shatefileSize == null ? null : shatefileSize.trim();
    }

    public String getSharefileType() {
        return sharefileType;
    }

    public void setSharefileType(String sharefileType) {
        this.sharefileType = sharefileType == null ? null : sharefileType.trim();
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

	public Integer getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
    
    
}
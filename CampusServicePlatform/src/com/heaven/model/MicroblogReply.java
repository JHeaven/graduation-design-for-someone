package com.heaven.model;

import java.util.Date;

public class MicroblogReply {
    private Integer id;

    private Integer twitterId;

    private Integer userId;

    private Date outTime;

    private Integer pushCount;

    private Integer isdelete;

    private String content;

    private User user;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTwitterId() {
        return twitterId;
    }

    public void setTwitterId(Integer twitterId) {
        this.twitterId = twitterId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
    }

    public Integer getPushCount() {
        return pushCount;
    }

    public void setPushCount(Integer pushCount) {
        this.pushCount = pushCount;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "MicroblogReply [id=" + id + ", twitterId=" + twitterId
				+ ", userId=" + userId + ", outTime=" + outTime
				+ ", pushCount=" + pushCount + ", isdelete=" + isdelete
				+ ", content=" + content + "]";
	}
    
    
}
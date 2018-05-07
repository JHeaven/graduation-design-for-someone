package com.heaven.model;

import java.util.Date;
import java.util.List;

public class Microblog {
    private Integer id;

    private Integer userId;

    private Integer clickCount;

    private String pic;

    private Integer goodCount;

    private Date outTime;

    private Integer state;

    private Integer hiddenName;

    private Integer isdelete;

    private String content;

    private User user;
    
    private List<MicroblogReply> thisReply;
    
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

    public Integer getClickCount() {
        return clickCount;
    }

    public void setClickCount(Integer clickCount) {
        this.clickCount = clickCount;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Integer getGoodCount() {
        return goodCount;
    }

    public void setGoodCount(Integer goodCount) {
        this.goodCount = goodCount;
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getHiddenName() {
        return hiddenName;
    }

    public void setHiddenName(Integer hiddenName) {
        this.hiddenName = hiddenName;
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
	
	
	
	public List<MicroblogReply> getThisReply() {
		return thisReply;
	}

	public void setThisReply(List<MicroblogReply> thisReply) {
		this.thisReply = thisReply;
	}

	@Override
	public String toString() {
		return "Microblog [id=" + id + ", userId=" + userId + ", clickCount="
				+ clickCount + ", pic=" + pic + ", goodCount=" + goodCount
				+ ", outTime=" + outTime + ", state=" + state + ", hiddenName="
				+ hiddenName + ", isdelete=" + isdelete + ", content="
				+ content + "]";
	}
    
}
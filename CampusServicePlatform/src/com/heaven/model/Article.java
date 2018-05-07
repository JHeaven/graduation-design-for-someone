package com.heaven.model;

import java.util.Date;

public class Article {
    private Integer id;

    private Integer userId;

    private Integer sectionId;

    private Integer clickCount;

    private String pic;

    private String title;

    private Integer isGood;

    private Date outTime;

    private Date lastTime;

    private Integer state;

    private Integer isdelete;

    private String labelpart;

    private String content;

    private User user;
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

    public Integer getSectionId() {
        return sectionId;
    }

    public void setSectionId(Integer sectionId) {
        this.sectionId = sectionId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Integer getIsGood() {
        return isGood;
    }

    public void setIsGood(Integer isGood) {
        this.isGood = isGood;
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public String getLabelpart() {
        return labelpart;
    }

    public void setLabelpart(String labelpart) {
        this.labelpart = labelpart == null ? null : labelpart.trim();
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
		return "Article [id=" + id + ", userId=" + userId + ", sectionId="
				+ sectionId + ", clickCount=" + clickCount + ", pic=" + pic
				+ ", title=" + title + ", isGood=" + isGood + ", outTime="
				+ outTime + ", lastTime=" + lastTime + ", state=" + state
				+ ", isdelete=" + isdelete + ", labelpart=" + labelpart
				+ ", content=" + content + "]";
	}
    
}
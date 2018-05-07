package com.heaven.model;

import java.util.Date;

public class ArticleReplyReply {
    private Integer id;

    private Integer replyId;

    private Integer userId;

    private Date outTime;

    private Integer isdelete;

    private Integer articleId;

    private String content;

    private User user;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getReplyId() {
        return replyId;
    }

    public void setReplyId(Integer replyId) {
        this.replyId = replyId;
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

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
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
		return "ArticleReplyReply [id=" + id + ", replyId=" + replyId
				+ ", userId=" + userId + ", outTime=" + outTime + ", isdelete="
				+ isdelete + ", articleId=" + articleId + ", content="
				+ content + ", user=" + user + "]";
	}
    
    
}
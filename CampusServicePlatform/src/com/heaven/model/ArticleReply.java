package com.heaven.model;

import java.util.Date;
import java.util.List;

public class ArticleReply {
    private Integer id;

    private Integer articleId;

    private Integer userId;

    private Date outTime;

    private Integer pushCount;

    private Integer isdelete;

    private String content;

    private User user;
    
    List<ArticleReplyReply> articleReplyReply;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
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

	public List<ArticleReplyReply> getArticleReplyReply() {
		return articleReplyReply;
	}

	public void setArticleReplyReply(List<ArticleReplyReply> articleReplyReply) {
		this.articleReplyReply = articleReplyReply;
	}
	
	
    
}
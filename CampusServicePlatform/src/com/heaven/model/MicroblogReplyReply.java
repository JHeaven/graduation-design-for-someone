package com.heaven.model;

import java.util.Date;

public class MicroblogReplyReply {
    private Integer id;

    private Integer replyId;

    private Integer userId;

    private Date outTime;

    private Integer hiddenName;

    private Integer isdelete;

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
}
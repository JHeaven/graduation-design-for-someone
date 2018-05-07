package com.zys.model;

public class ComEx {
    private Integer id;

    private String type;

    private String se1;

    private String se2;

    private String se3;

    private String se4;

    private String ans;

    private Integer score;

    private Integer deleted;

    private Integer belong;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getSe1() {
        return se1;
    }

    public void setSe1(String se1) {
        this.se1 = se1 == null ? null : se1.trim();
    }

    public String getSe2() {
        return se2;
    }

    public void setSe2(String se2) {
        this.se2 = se2 == null ? null : se2.trim();
    }

    public String getSe3() {
        return se3;
    }

    public void setSe3(String se3) {
        this.se3 = se3 == null ? null : se3.trim();
    }

    public String getSe4() {
        return se4;
    }

    public void setSe4(String se4) {
        this.se4 = se4 == null ? null : se4.trim();
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans == null ? null : ans.trim();
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public Integer getBelong() {
        return belong;
    }

    public void setBelong(Integer belong) {
        this.belong = belong;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

	@Override
	public String toString() {
		return "ComEx [id=" + id + ", type=" + type + ", se1=" + se1 + ", se2=" + se2 + ", se3=" + se3 + ", se4=" + se4
				+ ", ans=" + ans + ", score=" + score + ", deleted=" + deleted + ", belong=" + belong + ", content="
				+ content + "]";
	}
    
}
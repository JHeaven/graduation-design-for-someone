package com.zys.model;

import java.util.Date;

public class SignEx {
    private Integer id;

    private Integer stuId;

    private Integer ex;

    private Integer belong;

    private String ans;

    private Integer deleted;

    private Integer score;

    private Date ansTime;
    
    private String eType;
    
    private String eContent;
    
    private Integer eScore;
    
    private Integer Section;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getEx() {
        return ex;
    }

    public void setEx(Integer ex) {
        this.ex = ex;
    }

    public Integer getBelong() {
        return belong;
    }

    public void setBelong(Integer belong) {
        this.belong = belong;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans == null ? null : ans.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Date getAnsTime() {
        return ansTime;
    }

    public void setAnsTime(Date ansTime) {
        this.ansTime = ansTime;
    }

	public String geteType() {
		return eType;
	}

	public void seteType(String eType) {
		this.eType = eType;
	}

	public String geteContent() {
		return eContent;
	}

	public void seteContent(String eContent) {
		this.eContent = eContent;
	}

	public Integer geteScore() {
		return eScore;
	}

	public void seteScore(Integer eScore) {
		this.eScore = eScore;
	}

	public Integer getSection() {
		return Section;
	}

	public void setSection(Integer section) {
		Section = section;
	}

	@Override
	public String toString() {
		return "SignEx [id=" + id + ", stuId=" + stuId + ", ex=" + ex + ", belong=" + belong + ", ans=" + ans
				+ ", deleted=" + deleted + ", score=" + score + ", ansTime=" + ansTime + ", eType=" + eType
				+ ", eContent=" + eContent + ", eScore=" + eScore + ", Section=" + Section + "]";
	}
	
	
    
    
}
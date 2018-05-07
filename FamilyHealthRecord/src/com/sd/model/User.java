package com.sd.model;

import java.util.Date;

public class User {
    private Integer id;

    private String loginName;

    private String loginPassword;

    private String userType;

    private String userSection;

    private Date registerDate;

    private Date lastDate;

    private String photo;
    
    private String docName;
    private String docMid;
    private String docZy;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword == null ? null : loginPassword.trim();
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType == null ? null : userType.trim();
    }

    public String getUserSection() {
        return userSection;
    }

    public void setUserSection(String userSection) {
        this.userSection = userSection == null ? null : userSection.trim();
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public Date getLastDate() {
        return lastDate;
    }

    public void setLastDate(Date lastDate) {
        this.lastDate = lastDate;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    
	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocMid() {
		return docMid;
	}

	public void setDocMid(String docMid) {
		this.docMid = docMid;
	}

	public String getDocZy() {
		return docZy;
	}

	public void setDocZy(String docZy) {
		this.docZy = docZy;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", loginName=" + loginName + ", loginPassword=" + loginPassword + ", userType="
				+ userType + ", userSection=" + userSection + ", registerDate=" + registerDate + ", lastDate="
				+ lastDate + ", photo=" + photo + "]";
	}
    
    
    
    
}
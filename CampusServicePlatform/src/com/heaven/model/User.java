package com.heaven.model;

import java.util.Date;

public class User {
    private Integer id;

    private String nickName;

    private String loginName;

    private String loginPass;

    private Date birthday;

    private Integer gender;

    private Date registerDay;

    private Date lastloginDay;

    private Integer state;

    private String email;

    private Integer levelSite;

    private String image;

    private Integer score;

    private String mobilePhone;

    private String qq;

    private Integer role;

    private String stuNumber;

    private Integer departmentId;

    private Integer majorId;

    private Integer classroom;

    private String teaNumber;

    private String business;

    private Integer isdelete;

    private Integer masterOfSection;

    private String introduction;

    private UserLevel userLevel;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass == null ? null : loginPass.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Date getRegisterDay() {
        return registerDay;
    }

    public void setRegisterDay(Date registerDay) {
        this.registerDay = registerDay;
    }

    public Date getLastloginDay() {
        return lastloginDay;
    }

    public void setLastloginDay(Date lastloginDay) {
        this.lastloginDay = lastloginDay;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getLevelSite() {
        return levelSite;
    }

    public void setLevelSite(Integer levelSite) {
        this.levelSite = levelSite;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone == null ? null : mobilePhone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber == null ? null : stuNumber.trim();
    }

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public Integer getClassroom() {
        return classroom;
    }

    public void setClassroom(Integer classroom) {
        this.classroom = classroom;
    }

    public String getTeaNumber() {
        return teaNumber;
    }

    public void setTeaNumber(String teaNumber) {
        this.teaNumber = teaNumber == null ? null : teaNumber.trim();
    }

    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business == null ? null : business.trim();
    }

    public Integer getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Integer isdelete) {
        this.isdelete = isdelete;
    }

    public Integer getMasterOfSection() {
        return masterOfSection;
    }

    public void setMasterOfSection(Integer masterOfSection) {
        this.masterOfSection = masterOfSection;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    
	public UserLevel getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(UserLevel userLevel) {
		this.userLevel = userLevel;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nickName=" + nickName + ", loginName="
				+ loginName + ", loginPass=" + loginPass + ", birthday="
				+ birthday + ", gender=" + gender + ", registerDay="
				+ registerDay + ", lastloginDay=" + lastloginDay + ", state="
				+ state + ", email=" + email + ", levelSite=" + levelSite
				+ ", image=" + image + ", score=" + score + ", mobilePhone="
				+ mobilePhone + ", qq=" + qq + ", role=" + role
				+ ", stuNumber=" + stuNumber + ", departmentId=" + departmentId
				+ ", majorId=" + majorId + ", classroom=" + classroom
				+ ", teaNumber=" + teaNumber + ", business=" + business
				+ ", isdelete=" + isdelete + ", masterOfSection="
				+ masterOfSection + ", introduction=" + introduction + "]";
	}
    
    
}
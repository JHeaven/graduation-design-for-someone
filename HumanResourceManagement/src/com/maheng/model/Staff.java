package com.maheng.model;

import java.util.Date;

public class Staff {
    private Integer id;
    private String loginName;
    private String loginPass;
    private String name;
    private String sex;
    private Date birth;
    private String birthPlace;
    private String nation;
    private String identification;
    private String political;
    private Integer respectivedptId;
    private Date enterdptDate;
    private String dutyId;
    private String dutyName;//use
    private Date startpayDate;
    private String originalEnterprise;
    private String originalName;
    private String originalDuty;
    private String graduationSchool;
    private Date graduationDate;
    private String schoolRecord;
    private String major;
    private String foreignLanguage;
    private String address;
    private String telphone;
    private String email;
    private String inpostType;
    private String signContractId;
    private Date signDate;
    private Date signContractDue;
    private String contractType;
    private String hiredDepartment;//use
    private String hiredDuty;//cut
    private String remark;
    private Date checkDate;
    private Integer basicSalary;
    private Integer subSidy;
    private Integer levelSite;
    private String photo;

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

    public String getLoginPass() {
        return loginPass;
    }

    public void setLoginPass(String loginPass) {
        this.loginPass = loginPass == null ? null : loginPass.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace == null ? null : birthPlace.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getIdentification() {
        return identification;
    }

    public void setIdentification(String identification) {
        this.identification = identification == null ? null : identification.trim();
    }

    public String getPolitical() {
        return political;
    }

    public void setPolitical(String political) {
        this.political = political == null ? null : political.trim();
    }

    public Integer getRespectivedptId() {
        return respectivedptId;
    }

    public void setRespectivedptId(Integer respectivedptId) {
        this.respectivedptId = respectivedptId;
    }

    public Date getEnterdptDate() {
        return enterdptDate;
    }

    public void setEnterdptDate(Date enterdptDate) {
        this.enterdptDate = enterdptDate;
    }

    public String getDutyId() {
        return dutyId;
    }

    public void setDutyId(String dutyId) {
        this.dutyId = dutyId == null ? null : dutyId.trim();
    }

    public String getDutyName() {
        return dutyName;
    }

    public void setDutyName(String dutyName) {
        this.dutyName = dutyName == null ? null : dutyName.trim();
    }

    public Date getStartpayDate() {
        return startpayDate;
    }

    public void setStartpayDate(Date startpayDate) {
        this.startpayDate = startpayDate;
    }

    public String getOriginalEnterprise() {
        return originalEnterprise;
    }

    public void setOriginalEnterprise(String originalEnterprise) {
        this.originalEnterprise = originalEnterprise == null ? null : originalEnterprise.trim();
    }

    public String getOriginalName() {
        return originalName;
    }

    public void setOriginalName(String originalName) {
        this.originalName = originalName == null ? null : originalName.trim();
    }

    public String getOriginalDuty() {
        return originalDuty;
    }

    public void setOriginalDuty(String originalDuty) {
        this.originalDuty = originalDuty == null ? null : originalDuty.trim();
    }

    public String getGraduationSchool() {
        return graduationSchool;
    }

    public void setGraduationSchool(String graduationSchool) {
        this.graduationSchool = graduationSchool == null ? null : graduationSchool.trim();
    }

    public Date getGraduationDate() {
        return graduationDate;
    }

    public void setGraduationDate(Date graduationDate) {
        this.graduationDate = graduationDate;
    }

    public String getSchoolRecord() {
        return schoolRecord;
    }

    public void setSchoolRecord(String schoolRecord) {
        this.schoolRecord = schoolRecord == null ? null : schoolRecord.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getForeignLanguage() {
        return foreignLanguage;
    }

    public void setForeignLanguage(String foreignLanguage) {
        this.foreignLanguage = foreignLanguage == null ? null : foreignLanguage.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone == null ? null : telphone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getInpostType() {
        return inpostType;
    }

    public void setInpostType(String inpostType) {
        this.inpostType = inpostType == null ? null : inpostType.trim();
    }

    public String getSignContractId() {
        return signContractId;
    }

    public void setSignContractId(String signContractId) {
        this.signContractId = signContractId == null ? null : signContractId.trim();
    }

    public Date getSignDate() {
        return signDate;
    }

    public void setSignDate(Date signDate) {
        this.signDate = signDate;
    }

    public Date getSignContractDue() {
        return signContractDue;
    }

    public void setSignContractDue(Date signContractDue) {
        this.signContractDue = signContractDue;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType == null ? null : contractType.trim();
    }

    public String getHiredDepartment() {
        return hiredDepartment;
    }

    public void setHiredDepartment(String hiredDepartment) {
        this.hiredDepartment = hiredDepartment == null ? null : hiredDepartment.trim();
    }

    public String getHiredDuty() {
        return hiredDuty;
    }

    public void setHiredDuty(String hiredDuty) {
        this.hiredDuty = hiredDuty == null ? null : hiredDuty.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getCheckDate() {
        return checkDate;
    }

    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }

    public Integer getBasicSalary() {
        return basicSalary;
    }

    public void setBasicSalary(Integer basicSalary) {
        this.basicSalary = basicSalary;
    }

    public Integer getSubSidy() {
        return subSidy;
    }

    public void setSubSidy(Integer subSidy) {
        this.subSidy = subSidy;
    }

    public Integer getLevelSite() {
        return levelSite;
    }

    public void setLevelSite(Integer levelSite) {
        this.levelSite = levelSite;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

	@Override
	public String toString() {
		return "Staff [id=" + id + ", loginName=" + loginName + ", loginPass="
				+ loginPass + ", name=" + name + ", sex=" + sex + ", birth="
				+ birth + ", birthPlace=" + birthPlace + ", nation=" + nation
				+ ", identification=" + identification + ", political="
				+ political + ", respectivedptId=" + respectivedptId
				+ ", enterdptDate=" + enterdptDate + ", dutyId=" + dutyId
				+ ", dutyName=" + dutyName + ", startpayDate=" + startpayDate
				+ ", originalEnterprise=" + originalEnterprise
				+ ", originalName=" + originalName + ", originalDuty="
				+ originalDuty + ", graduationSchool=" + graduationSchool
				+ ", graduationDate=" + graduationDate + ", schoolRecord="
				+ schoolRecord + ", major=" + major + ", foreignLanguage="
				+ foreignLanguage + ", address=" + address + ", telphone="
				+ telphone + ", email=" + email + ", inpostType=" + inpostType
				+ ", signContractId=" + signContractId + ", signDate="
				+ signDate + ", signContractDue=" + signContractDue
				+ ", contractType=" + contractType + ", hiredDepartment="
				+ hiredDepartment + ", hiredDuty=" + hiredDuty + ", remark="
				+ remark + ", checkDate=" + checkDate + ", basicSalary="
				+ basicSalary + ", subSidy=" + subSidy + ", levelSite="
				+ levelSite + ", photo=" + photo + "]";
	}
    
}
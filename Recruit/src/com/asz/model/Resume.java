package com.asz.model;

import java.util.Date;

public class Resume {
    private Integer id;

    private String name;

    private String sex;

    private Date birth;

    private String sfz;

    private String jiguan;

    private String zhengzhi;

    private String mingzu;

    private String address;

    private String peopleId;//del
    

    private String phone;

    private String email;

    private String xueli;

    private String zhuanye;

    private String school;

    private String honor;

    private String scholarship;

    private String sSection;

    private String tendence;

    private String mainSection;

    private String skill;

    private Date ex1From;

    private Date ex2From;

    private Date ex3From;

    private Date ex4From;

    private String ex1Cor;

    private String ex2Cor;

    private String ex3Cor;

    private String ex4Cor;

    private String ex1SectionRes;

    private String ex2SectionRes;

    private String ex3SectionRes;

    private String ex4SectionRes;

    private Date ex1To;

    private Date ex2To;

    private Date ex3To;

    private Date ex4To;

    private String cet;

    private String ncre;

    private String hobby;

    private String idea;

    private Integer deleted;

    private String ps;

    private String status;

    private String photo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getSfz() {
        return sfz;
    }

    public void setSfz(String sfz) {
        this.sfz = sfz == null ? null : sfz.trim();
    }

    public String getJiguan() {
        return jiguan;
    }

    public void setJiguan(String jiguan) {
        this.jiguan = jiguan == null ? null : jiguan.trim();
    }

    public String getZhengzhi() {
        return zhengzhi;
    }

    public void setZhengzhi(String zhengzhi) {
        this.zhengzhi = zhengzhi == null ? null : zhengzhi.trim();
    }

    public String getMingzu() {
        return mingzu;
    }

    public void setMingzu(String mingzu) {
        this.mingzu = mingzu == null ? null : mingzu.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(String peopleId) {
        this.peopleId = peopleId == null ? null : peopleId.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getXueli() {
        return xueli;
    }

    public void setXueli(String xueli) {
        this.xueli = xueli == null ? null : xueli.trim();
    }

    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye == null ? null : zhuanye.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getHonor() {
        return honor;
    }

    public void setHonor(String honor) {
        this.honor = honor == null ? null : honor.trim();
    }

    public String getScholarship() {
        return scholarship;
    }

    public void setScholarship(String scholarship) {
        this.scholarship = scholarship == null ? null : scholarship.trim();
    }

    public String getsSection() {
        return sSection;
    }

    public void setsSection(String sSection) {
        this.sSection = sSection == null ? null : sSection.trim();
    }

    public String getTendence() {
        return tendence;
    }

    public void setTendence(String tendence) {
        this.tendence = tendence == null ? null : tendence.trim();
    }

    public String getMainSection() {
        return mainSection;
    }

    public void setMainSection(String mainSection) {
        this.mainSection = mainSection == null ? null : mainSection.trim();
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill == null ? null : skill.trim();
    }

    public Date getEx1From() {
        return ex1From;
    }

    public void setEx1From(Date ex1From) {
        this.ex1From = ex1From;
    }

    public Date getEx2From() {
        return ex2From;
    }

    public void setEx2From(Date ex2From) {
        this.ex2From = ex2From;
    }

    public Date getEx3From() {
        return ex3From;
    }

    public void setEx3From(Date ex3From) {
        this.ex3From = ex3From;
    }

    public Date getEx4From() {
        return ex4From;
    }

    public void setEx4From(Date ex4From) {
        this.ex4From = ex4From;
    }

    public String getEx1Cor() {
        return ex1Cor;
    }

    public void setEx1Cor(String ex1Cor) {
        this.ex1Cor = ex1Cor == null ? null : ex1Cor.trim();
    }

    public String getEx2Cor() {
        return ex2Cor;
    }

    public void setEx2Cor(String ex2Cor) {
        this.ex2Cor = ex2Cor == null ? null : ex2Cor.trim();
    }

    public String getEx3Cor() {
        return ex3Cor;
    }

    public void setEx3Cor(String ex3Cor) {
        this.ex3Cor = ex3Cor == null ? null : ex3Cor.trim();
    }

    public String getEx4Cor() {
        return ex4Cor;
    }

    public void setEx4Cor(String ex4Cor) {
        this.ex4Cor = ex4Cor == null ? null : ex4Cor.trim();
    }

    public String getEx1SectionRes() {
        return ex1SectionRes;
    }

    public void setEx1SectionRes(String ex1SectionRes) {
        this.ex1SectionRes = ex1SectionRes == null ? null : ex1SectionRes.trim();
    }

    public String getEx2SectionRes() {
        return ex2SectionRes;
    }

    public void setEx2SectionRes(String ex2SectionRes) {
        this.ex2SectionRes = ex2SectionRes == null ? null : ex2SectionRes.trim();
    }

    public String getEx3SectionRes() {
        return ex3SectionRes;
    }

    public void setEx3SectionRes(String ex3SectionRes) {
        this.ex3SectionRes = ex3SectionRes == null ? null : ex3SectionRes.trim();
    }

    public String getEx4SectionRes() {
        return ex4SectionRes;
    }

    public void setEx4SectionRes(String ex4SectionRes) {
        this.ex4SectionRes = ex4SectionRes == null ? null : ex4SectionRes.trim();
    }

    public Date getEx1To() {
        return ex1To;
    }

    public void setEx1To(Date ex1To) {
        this.ex1To = ex1To;
    }

    public Date getEx2To() {
        return ex2To;
    }

    public void setEx2To(Date ex2To) {
        this.ex2To = ex2To;
    }

    public Date getEx3To() {
        return ex3To;
    }

    public void setEx3To(Date ex3To) {
        this.ex3To = ex3To;
    }

    public Date getEx4To() {
        return ex4To;
    }

    public void setEx4To(Date ex4To) {
        this.ex4To = ex4To;
    }

    public String getCet() {
        return cet;
    }

    public void setCet(String cet) {
        this.cet = cet == null ? null : cet.trim();
    }

    public String getNcre() {
        return ncre;
    }

    public void setNcre(String ncre) {
        this.ncre = ncre == null ? null : ncre.trim();
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby == null ? null : hobby.trim();
    }

    public String getIdea() {
        return idea;
    }

    public void setIdea(String idea) {
        this.idea = idea == null ? null : idea.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }
}
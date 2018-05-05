package com.gyq.model;

public class CourseList implements Comparable<CourseList>{
    private Integer id;

    private Integer cId;

    private String cName;

    private String cType;

    private String tId;

    private String tName;

    private Integer classId;

    private String className;

    private String ps;

    private Integer deleted;

    private Integer num;//人数

    private String bestSite;//趋向排课时间段

    private Integer site;//等级

    private Integer keshi;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    public String getcType() {
        return cType;
    }

    public void setcType(String cType) {
        this.cType = cType == null ? null : cType.trim();
    }

    public String gettId() {
        return tId;
    }

    public void settId(String tId) {
        this.tId = tId == null ? null : tId.trim();
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getBestSite() {
        return bestSite;
    }

    public void setBestSite(String bestSite) {
        this.bestSite = bestSite == null ? null : bestSite.trim();
    }

    public Integer getSite() {
        return site;
    }

    public void setSite(Integer site) {
        this.site = site;
    }

    public Integer getKeshi() {
        return keshi;
    }

    public void setKeshi(Integer keshi) {
        this.keshi = keshi;
    }

	@Override
	public String toString() {
		return "CourseList [id=" + id + ", cId=" + cId + ", cName=" + cName + ", cType=" + cType + ", tId=" + tId
				+ ", tName=" + tName + ", classId=" + classId + ", className=" + className + ", ps=" + ps + ", deleted="
				+ deleted + ", num=" + num + ", bestSite=" + bestSite + ", site=" + site + ", keshi=" + keshi + "]";
	}

	@Override
	public int compareTo(CourseList o) {
		int i = this.getSite() - o.getSite();
		if (i == 0) {
			i = this.getNum() - o.getNum();
		}
		return i;
	}
    
    
}
package com.mebx.model;

public class Film {
    private Integer id;

    private String title;

    private Float score;

    private String flagCon;

    private String ps;

    private Integer deteted;

    private Integer form;
    
    private Integer to;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Float getScore() {
        return score;
    }

    public void setScore(Float score) {
        this.score = score;
    }

    public String getFlagCon() {
        return flagCon;
    }

    public void setFlagCon(String flagCon) {
        this.flagCon = flagCon == null ? null : flagCon.trim();
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps == null ? null : ps.trim();
    }

    public Integer getDeteted() {
        return deteted;
    }

    public void setDeteted(Integer deteted) {
        this.deteted = deteted;
    }

	public Integer getForm() {
		return form;
	}

	public void setForm(Integer form) {
		this.form = form;
	}

	public Integer getTo() {
		return to;
	}

	public void setTo(Integer to) {
		this.to = to;
	}
    
    
}
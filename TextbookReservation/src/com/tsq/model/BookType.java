package com.tsq.model;

public class BookType {
    private Integer id;

    private String name;

    private String ps;

    private Integer deleted;

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

	@Override
	public String toString() {
		return "BookType [id=" + id + ", name=" + name + ", ps=" + ps + ", deleted=" + deleted + "]";
	}
    
    
}
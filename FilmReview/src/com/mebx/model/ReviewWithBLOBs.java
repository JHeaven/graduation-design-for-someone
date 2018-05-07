package com.mebx.model;

public class ReviewWithBLOBs extends Review {
    private String content;

    private String fPhoto;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getfPhoto() {
        return fPhoto;
    }

    public void setfPhoto(String fPhoto) {
        this.fPhoto = fPhoto == null ? null : fPhoto.trim();
    }
}
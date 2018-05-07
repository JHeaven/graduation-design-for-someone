package com.mebx.model;

public class FilmWithBLOBs extends Film {
    private String simpleSay;

    private String head;

    public String getSimpleSay() {
        return simpleSay;
    }

    public void setSimpleSay(String simpleSay) {
        this.simpleSay = simpleSay == null ? null : simpleSay.trim();
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head == null ? null : head.trim();
    }
}
package com.example.jstl_ex.entites;

public class Category {
    private int cid;
    private String name;
    private String descripition;

    public Category(int cid,String name,String descripition)
    {
        this.cid=cid;
        this.name=name;
        this.descripition=descripition;
    }
    public Category()
    {

    }
    public Category(String name,String descripition)
    {
        this.name=name;
        this.descripition=descripition;
    }

    public int getCid() {
        return cid;
    }

    public String getName() {
        return name;
    }

    public void setDescripition(String descripition) {
        this.descripition = descripition;
    }

    public String getDescripition() {
        return descripition;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }
}


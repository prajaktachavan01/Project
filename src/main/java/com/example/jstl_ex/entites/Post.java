package com.example.jstl_ex.entites;

public class Post
{
    private String pTitle;
    private String pContent;

    public Post( String pTitle, String pContent) {
        this.pTitle = pTitle;
        this.pContent = pContent;

    }
    public Post()
    {

    }



    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }




}

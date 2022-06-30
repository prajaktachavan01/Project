package com.example.jstl_ex.entites;

public class Feedback
{
    private String name;
    private String email;
    private String description;


   public Feedback(String name,String email,String description)
    {
        this.name=name;
        this.email=email;
        this.description=description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}


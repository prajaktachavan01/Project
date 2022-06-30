package com.example.jstl_ex.entites;

public class user {
    private String Username;
    private String name;
    private String mail;
    private String password;


    public user(String Username,String name,String mail,String password) {
      this.Username = Username;
      this.name=name;
      this.mail=mail;
      this.password=password;
    }
    public user(){

    }


    //getter and setter
    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return Username;
    }

    public String getMail() {
        return mail;
    }









    public void setPassword(String password) {

        this.password = password;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUsername(String username) {
        this.Username = username;
    }
}

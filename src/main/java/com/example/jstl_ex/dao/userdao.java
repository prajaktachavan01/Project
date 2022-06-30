package com.example.jstl_ex.dao;
import java.sql.*;

import com.example.jstl_ex.entites.Feedback;
import com.example.jstl_ex.entites.user;

public class userdao {
    private Connection con;

    public userdao(Connection con) {
        this.con = con;
    }


    //method to insert user to data base
    public boolean savedata(user User)
    {
        boolean f=false;

        try{

            String query="insert into member1 values(?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1, User.getUsername());
            ps.setString(2, User.getName());
            ps.setString(3, User.getMail());
            ps.setString(4, User.getPassword());
            ps.executeUpdate();
            f=true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;

    }


    public boolean savedata1(Feedback feedback)
    {
        boolean f=false;

        try{

            String query="insert into feedback values(?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
          ps.setString(1,feedback.getName());
          ps.setString(2,feedback.getEmail());
          ps.setString(3,feedback.getDescription());
            ps.executeUpdate();
            f=true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;

    }


































    //get user email and password
    public user getByEmailAndPassword(String username,String password)
    {

        user User1=null;
        try {
            String query="select * from member1 where username =? and password =?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
          ResultSet rs= ps.executeQuery();
          if(rs.next())
          {

              User1=new user();

//              String username=rs.getString("username");
//
//              User1.setUsername(username);
//              String name=rs.getString("name");
//              User1.setName(name);
//              String Email=rs.getString("email");
//              User1.setMail(Email);
//              String Password=rs.getString("password");
//              User1.setPassword(Password);
              User1.setUsername(rs.getString("username"));
              User1.setName(rs.getString("name"));
              User1.setMail(rs.getString("email"));
              User1.setPassword(rs.getString("password"));
          }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }



        return User1;
    }

}

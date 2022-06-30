package com.example.jstl_ex.dao;
import com.example.jstl_ex.entites.Category;
import com.example.jstl_ex.entites.Post;

import javax.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class postdao
{
    Connection con;
    public postdao(Connection con)
    {
        this.con=con;
    }
    public ArrayList<Category> getAllcategory()
    {
        ArrayList<Category> list=new ArrayList<>();

        try {
            String q="select * from categories1";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(q);
            while (rs.next())
            {
                int cid=rs.getInt("cid");
                String name=rs.getString("name");
                String descripition=rs.getString("descripition");
                Category c=new Category(cid,name,descripition);
                list.add(c);

            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }


        return list;
    }

    public boolean savepost(Post p)
    {
        boolean flag=false;

        try {
            String q="insert into query1 values(?,?)";
            PreparedStatement pstmt=con.prepareStatement(q);
            pstmt.setString(1,p.getpTitle());
            pstmt.setString(2, p.getpContent());
//            pstmt.setString(3, p.getpPic());
            pstmt.executeUpdate();
            flag=true;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }



        return flag;
    }


    //get all posts
    public List<Post> getAllPosts() {

        List<Post> list = new ArrayList<>();
        //fetch data
        try {
            PreparedStatement p=con.prepareStatement("select * from query1");
            ResultSet set=p.executeQuery();
            while(set.next())
            {

                String ptitle=set.getString("title");
                String pcontent=set.getString("content");
                Post p1=new Post(ptitle,pcontent);
                list.add(p1);


            }

        }
        catch (Exception e)
        {
             e.printStackTrace();
        }


        return list;

    }


}

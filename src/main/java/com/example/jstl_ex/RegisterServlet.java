package com.example.jstl_ex;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.example.jstl_ex.dao.userdao;
import com.example.jstl_ex.helper.ConnectionProvider;
import com.example.jstl_ex.entites.user;

import java.io.PrintWriter;
import java.sql.*;
@MultipartConfig
public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        String name=request.getParameter("name");
        String mail=request.getParameter("mail");
        String password=request.getParameter("password");
        user User=new user(username,name,mail,password);
        userdao da=new userdao(ConnectionProvider.getConnection());
        if (da.savedata(User)) {
            out.println("done");
        } else {
            out.println("error");
        }





    }
}

package com.example.jstl_ex;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

import com.example.jstl_ex.dao.userdao;
import com.example.jstl_ex.helper.ConnectionProvider;
import com.example.jstl_ex.entites.user;


public class LoginServlet extends HttpServlet
{
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out=response.getWriter();
        String Username=request.getParameter("User_name");
        String Password=request.getParameter("User_password");
        userdao da= new userdao(ConnectionProvider.getConnection());
       user u= da.getByEmailAndPassword(Username,Password);


       if(u==null)
       {
           out.println("login error");

       }
       else {
           HttpSession s=request.getSession();
           s.setAttribute("currentUser",u);
           response.sendRedirect("home.jsp");


       }



    }
}

package com.example.jstl_ex;
import com.example.jstl_ex.dao.userdao;
import com.example.jstl_ex.entites.Feedback;
import com.example.jstl_ex.helper.ConnectionProvider;

import  javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class FeedbackServlet extends  HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        String name=request.getParameter("username");
        String email=request.getParameter("email");
        String description=request.getParameter("description");
        PrintWriter out=response.getWriter();
        Feedback fd=new Feedback(name,email,description);
        userdao dao=new userdao(ConnectionProvider.getConnection());
        if (dao.savedata1(fd))
        {
            out.println("done");
        } else {
            out.println("error");
        }
    }
}

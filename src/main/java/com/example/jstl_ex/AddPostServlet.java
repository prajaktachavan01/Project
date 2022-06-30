package com.example.jstl_ex;
import com.example.jstl_ex.dao.postdao;
import com.example.jstl_ex.entites.Post;
import com.example.jstl_ex.helper.ConnectionProvider;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@MultipartConfig
public class AddPostServlet extends HttpServlet


{

//    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
//    {
//        PrintWriter out=response.getWriter();
//
//        String ptitle=request.getParameter("eTitle");
//        String pcontent=request.getParameter("eContent");
//        Part part=request.getPart("epic");
//        out.println(ptitle);
//        Post p=new Post(ptitle,pcontent,part.getSubmittedFileName());
//        postdao dao=new postdao(ConnectionProvider.getConnection());
//        out.println("<h1>"+ptitle+"<h1>");
//        out.println(pcontent);
////        if(dao.savepost(p))
////        {
////            out.println("done");
////        }
////        else {
////            out.println("error");
////        }
//
//    }

//    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
//        PrintWriter out=response.getWriter();
//        String ptitle=request.getParameter("eTitle");
//         String pcontent=request.getParameter("eContent");
//         Part part=request.getPart("ePic");
//         out.println("your post title is "+ptitle);
//         out.println("your content"+pcontent);
//         out.println("your image is"+part);
//         out.println(part.getSubmittedFileName());
//
//    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
        PrintWriter out=response.getWriter();
        String ptitle=request.getParameter("eTitle");
        String pcontent=request.getParameter("eContent");
//        Part part=request.getPart("ePic");
//        out.println("your post title is "+ptitle);
//        out.println("your content"+pcontent);
        Post p=new Post(ptitle,pcontent);
        postdao dao=new postdao(ConnectionProvider.getConnection());

        if(dao.savepost(p))
       {
          out.println("done");
      }
      else {
            out.println("error");
      }
//        out.println("your image is"+part);
//        out.println(part.getSubmittedFileName());

    }

//    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
//        String ptitle=request.getParameter("eTitle");
//        String pcontent=request.getParameter("eContent");
////        Part part=request.getPart("ePic");
//        PrintWriter out=response.getWriter();
//        out.println("<h1>"+ptitle+"<h1>");

    }



<%@ page import="com.example.jstl_ex.dao.postdao" %>
<%@ page import="com.example.jstl_ex.helper.ConnectionProvider" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jstl_ex.entites.Post" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 13/05/2022
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.tailwindcss.com"></script>
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v13.0" nonce="4pRSCXct"></script>

</head>
<body>
<%--<h1>This is load post jsp..</h1>--%>
<div class="row">
<%
    postdao d=new postdao(ConnectionProvider.getConnection());

    List<Post> post=d.getAllPosts();
    for (Post p:post) {
        %>

    <div class="col-md-6 mt-2">
        <div class="card">
            <div class="card-body">
                <b><%= p.getpTitle()%></b>
                <p><%=p.getpContent()%></p>
            </div>
<%--            <div class="card-footer bg-violet-200">--%>
<%--                <a href="" class="bg-violet-600 text-white px-1 no-underline py-1 font-semibold rounded-md hover:bg-violet-800 mr-3">ReadMore </a>--%>
<%--                <a href="" class="bg-violet-600 text-white px-1 py-1 font-semibold rounded-md hover:bg-violet-800 mr-3"><i class="fa fa-thumbs-o-up"></i> </a>--%>
<%--                <a href="" class="bg-violet-600 text-white px-1 py-1 font-semibold rounded-md hover:bg-violet-800 mr-3"><i class="fa fa-commenting-o"></i> </a>--%>
<%--            </div>--%>
            <div class="card-footer">
                <div class="container bg-violet-100 w-[380px] rounded-sm ">
                    <div class=" ">
                        <input type="text" placeholder="Enter your name" id="name" class="p-3 bg-transparent text-black w-full outline-none font-semibold">
                    </div>
                    <div>
                        <input type="text" aria-rowcount="5" placeholder=" Enter comment" id="comment" class="p-3 bg-transparent w-full outline-none font-semibold">
                    </div>
                    <button onclick="add()" class="w-48  p-1 bg-violet-700 text-white ml-1 rounded-md hover:bg-violet-900 hover:font-bold"> Comment </button>
                    <button onclick="location.reload()" class="w-32 p-1 bg-red-500 text-white rounded-md hover:bg-red-700 hover:font-bold" > Clear</button>
                </div>
                <ul class="list bg-violet-100 font-serif p-2"></ul>
                <script src="index.js"></script>
            </div>
        </div>
    </div>








<%
    }
%>

</div>
</body>
</html>

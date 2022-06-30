<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 28/04/2022
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@page import="com.example.jstl_ex.helper.ConnectionProvider" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="style1.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
<div class=" Loader h-screen w-screen overflow-hidden  bg-[#16191e] absolute">
    <div class="h-[100px] w-[100px] border-[15px] border-solid border-[#45474b] border-t-[#2a88e6] absolute m-auto top-0 bottom-0 left-0 right-0 rounded-full animate-spin"></div>
</div>

<div class="main_content hidden">


   <div class="frame hidden">
       <iframe width="560" height="315" src="https://www.youtube.com/embed/NY6f4HnPgqc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       <iframe width="560" height="315" src="https://www.youtube.com/embed/NY6f4HnPgqc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       <iframe width="560" height="315" src="https://www.youtube.com/embed/NY6f4HnPgqc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       <iframe width="560" height="315" src="https://www.youtube.com/embed/NY6f4HnPgqc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
   </div>
<div class="animation-area">
    <ul class="box-area">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>



<nav class="bg-black text-lg text-white h-56 flex items-center justify-around w-50">

    <img src="img/vs%20(12).png" class="w-[21.5rem]">

</nav>

<%--<div class="conatiner bg-yellow-600 text-white text-center h-[22px]">--%>
<%--<div class="t">--%>

<%--</div>--%>
<%--</div>--%>


<div class="btn">
    <span class="fas fa-bars"></span>
</div>


<nav class="sidebar">
    <div class="text">
<%--        Side Menu--%>
    </div>
    <ul>

        <li class="active"><a href="#">HOME</a></li>
        <li>
            <a href="#" class="feat-btn">ACADEMICS
                <span class="fas fa-caret-down first"></span>
            </a>
            <ul class="feat-show">
                <li><a href="Papers.jsp">Papers</a></li>
                <li><a href="Books.jsp">Books</a></li>
                <li><a href="TimeTable.jsp">Timetable</a></li>
                <li><a href="notes.jsp">Notes</a></li>
                <li><a href="events.jsp">Events</a></li>
            </ul>
        </li>
        <li>
            <a href="#" class="serv-btn">Add Post
                <span class="fas fa-caret-down second"></span>
            </a>
            <ul class="serv-show">
                <li><a href="post.jsp">Add Query</a></li>
            </ul>
        </li>



        <li><a href="#"></a></li>

        <li><a href="feedback.jsp">Feedback</a></li>
    </ul>
</nav>


       <div class="flex justify-end mr-[120px] mt-3">

           <div class="h-[21rem] w-60 border-transparent border-gray-400 shadow-xl ml-2 bg-black text-white mt-1 border-[1px] rounded-md transition duration-300 hover:scale-105">
               <img src="img/newVs.png" alt="" class="w-[85px] text-center m-2">
               <h1 class="text-3xl text-center font-serif p-2">Who are we?</h1>
               <p class="text-center p-1 ">A bunch of curious enthusiastic and motivated college students who work together to build solutions to problems that we face every
               </p>
           </div>
           <div class="h-[21rem] w-60 border-transparent border-gray-400 shadow-xl ml-2 bg-black text-white mt-1 border-[1px] rounded-md transition duration-300 hover:scale-105">
               <img src="img/newVs.png" alt="" class="w-[85px] text-center m-2">
               <h1 class="text-3xl text-center font-serif p-2">What have we been upto?</h1>
               <p class="text-center p-1 ">VishwaSpace has been the one-stop solution for students the night before exams.
               </p>
           </div>
           <div class="h-[21rem] w-60 border-transparent border-gray-400 shadow-xl ml-2 bg-black text-white mt-1 border-[1px] rounded-md transition duration-300 hover:scale-105">
               <img src="img/newVs.png" alt="" class="w-[85px] text-center m-2">
               <h1 class="text-3xl text-center font-serif p-2">Whom will you meet at VS?</h1>
               <p class="text-center p-1 ">Students who are leveraging experimental learning for leading bright career.<br> <b>Everyone contributing in their own way! </b>
               </p>
           </div>
           <div class="h-[21rem] w-60 border-transparent border-gray-400 shadow-xl ml-2 bg-black text-white mt-1 border-[1px] rounded-md transition duration-300 hover:scale-105">
               <img src="img/newVs.png" alt="" class="w-[85px] text-center m-2">
               <h1 class="text-3xl text-center font-serif p-2">Why should you visit VS?</h1>
               <p class="text-center p-1 ">There will be a scholastic environment where you can apply your skills to solve actual problems.
               </p>
           </div>

       </div>


</div>
</div>





<script>
    $('.btn').click(function(){
        $(this).toggleClass("click");
        $('.sidebar').toggleClass("show");
    });
    $('.feat-btn').click(function(){
        $('nav ul .feat-show').toggleClass("show");
        $('nav ul .first').toggleClass("rotate");
    });
    $('.serv-btn').click(function(){
        $('nav ul .serv-show').toggleClass("show1");
        $('nav ul .second').toggleClass("rotate");
    });
    $('nav ul li').click(function(){
        $(this).addClass("active").siblings().removeClass("active");
    });
</script>


<script>
    $(window).on('load',function ()
    {
       $('.loader').fadeOut(1000);
       $('.main_content').fadeIn(1000);
    });

</script>




</body>
</html>

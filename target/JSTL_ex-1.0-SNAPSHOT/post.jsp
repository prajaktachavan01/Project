<%@ page import="com.example.jstl_ex.dao.postdao" %>
<%@ page import="com.example.jstl_ex.helper.ConnectionProvider" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.jstl_ex.entites.Category" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/05/2022
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v13.0" nonce="4pRSCXct"></script>
</head>

<body class="bg-[cadetblue]">

<div class="main_box flex justify-evenly mt-10 ml-[55px]">

    <form action="AddPostServlet" method="post" id="add-post-form">
        <div class="format w-96 h-[510px] bg-slate-300 flex flex-col p-4 rounded-md">
            <h1 class="font-serif">Add Query..</h1>

            <select name="" id="" class="mt-1 outline-none">
                <option value="" selected disabled>---Select Category---</option>
                <option value="" >Java Programing </option>
                <option>Python Programing</option>
                <option>Other</option>
            </select>

            <div>
                <input type="text" placeholder=" Enter Your Title" class="w-full p-2 outline-none mt-2 font-serif" name="eTitle">
            </div>
            <textarea rows="6" cols="50" name="eContent" class="mt-2 p-2 w-full outline-none mb-3 h-[260px] font-serif" >
                Enter Your Query...
            </textarea>
            <label for="" class="font-serif">
                Select Your Pic
            </label>
            <input type="file">
            <button type="submit" class="bg-blue-600 text-white p-1 mt-4 hover:bg-blue-800 font-serif rounded-sm">
                Submit
            </button>
        </div>
    </form>


<div class="Container" >
    <div id="loader">
        <i class="fas fa-sync-alt fa-spin text-3xl text-centre"></i>
        Loading....
    </div>

    <div id="post-contain" class="container-fluid">
        <div class="card-footer">
            <div class="fb-comments" data-href="http://localhost:9494/JSTL_ex_war_exploded/post.jsp" data-width="" data-numposts="5"></div>
        </div>
    </div>
</div>


</div>





<script>
    $(document).ready(function (e){
        // alert("loaded..")
        $("#add-post-form").on("submit",function (event)
        {
            //this code when is form submit
            event.preventDefault();
            console.log("done...");
            let form=new FormData(this);
            $.ajax({
                url: "AddPostServlet",
                type: 'POST',
                data: form,
                success:function(data,textStatus,jqXHR)
                {

                    //success
                    console.log(data);
                    console.log("done...");
                    if (data.trim()=='done')
                    {
                        swal("Good job!", "Your Post Added!!", "success");
                    }
                    else {
                        swal("Good job!", "Something Went Wrong!!", "success");
                    }

                },
                error:function(jqXHR,textStatus,errorThrown)
                {
                    //error
                    swal("Good job!", "Something Went Wrong", "success");
                },
                processData:false,
                contentType:false
            })
        })
    })

</script>
<%--loading post--%>
<script>
    $(document).ready(function (e)
    {
       $.ajax({
           url: "load_post.jsp",
           success:function(data,textStatus,jqXHR){
               console.log(data);
               $("#loader").hide();
               $('#post-contain').html(data)

           }

       })
    })
</script>

</body>
</html>

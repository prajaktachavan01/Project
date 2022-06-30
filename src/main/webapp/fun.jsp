<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/03/2022
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script
            src="https://kit.fontawesome.com/64d58efce2.js"
            crossorigin="anonymous"
    ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<%--<h1>--%>
<%--  function page:--%>
<%--</h1>--%>
<%--<c:set var="name" value="pratham angdikar">--%>

<%--</c:set>--%>
<%--<h1><c:out value="${name}">--%>
<%--</c:out></h1>--%>
<%--<h1> <c:out value="${fn:length(name)}">--%>
<%--    </c:out></h1>--%>
<%--<h1><c:out value="${fn:toUpperCase(name)}">--%>
<%--</c:out></h1>--%>
<%--<c:out value="${fn:contains(name,'pratham' )}">--%>
<%--</c:out>--%>


<%--<nav>--%>
<%--    <ul class="flex space-x-3">--%>
<%--        <li>Home</li>--%>
<%--        <li>About</li>--%>
<%--        <li>Contact</li>--%>
<%--        <li>Mail</li>--%>
<%--    </ul>--%>
<%--</nav>--%>


<div class="container">
    <div class="forms-container">
        <div class="signin-signup">

            <form action="LoginServlet" class="sign-in-form" method="post">
                <h2 class="title">Sign in</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username" name="User_name"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="User_password" required/>
                </div>
                <input type="submit" value="Login" class="btn solid" />
                <p class="social-text">Or Sign in with social platforms</p>
                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>

            </form>

            <form action="RegisterServlet" class="sign-up-form" method="post" id="reg-form">

                <h2 class="title">Sign up</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username" name="username"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Name" name="name"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" name="mail"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" name="password"/>
                </div>
                <div class="loader" id="icon-lod" style="display: none">
                    <i class="fa fa-refresh fa-spin"></i>
                    <h4>Please Wait..</h4>
                </div>
                <input type="submit" class="btn" value="Sign up" id="submit-btn"/>

                <p class="social-text">Or Sign up with social platforms</p>
                <div class="social-media">
                    <a href="#" class="social-icon">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="#" class="social-icon">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                </div>
            </form>
        </div>
    </div>

    <div class="panels-container">
        <div class="panel left-panel">
            <div class="content">
                <h3>New here ?</h3>
                <p>
                    Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
                    ex ratione. Aliquid!
                </p>
                <button class="btn transparent" id="sign-up-btn">
                    Sign up
                </button>
            </div>
            <img src="img/undraw_secure_login_pdn4.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
            <div class="content">
                <h3>One of us ?</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
                    laboriosam ad deleniti.
                </p>
                <button class="btn transparent" id="sign-in-btn">
                    Sign in
                </button>
            </div>
            <img src="img/undraw_exams_g-4-ow.svg" class="image" alt="" />
        </div>
    </div>
</div>

<script src="app.js"></script>
<script>


    $(document).ready(function() {
        $('#reg-form').on('submit',function(event){
            event.preventDefault();
            let form=new FormData(this);
            $("#submit-btn").hide();
            $("icon-lod").show();
            //send regiter servlet
            $.ajax({
                url: "RegisterServlet",
                type: 'post',
                data: form,
                success:function(data,textStatus,jqXHR)
                {
                    console.log(data);
                    $("#submit-btn").show();
                    $("icon-lod").hide();
                    swal("Good job!", "Your Registration Successfully!!", "success");
                },
                error:function(jqXHR,textStatus,errorThrown)
                {
                    console.log(jqXHR);
                    $("#submit-btn").hide();
                    $("icon-lod").show();
                },
                processData:false,
                contentType:false
            })
        })
    })


</script>

</body>
</html>

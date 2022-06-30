<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 15/05/2022
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style4.css">
    <script src="https://kit.fontawesome.com/67c66657c7.js"></script>
</head>
<body>




<section></section>

<div class="container">

    <form action="FeedbackServlet" method="post">

        <h1>Give your feedback</h1>

        <div class="id">

            <input type="text" placeholder="Full name" name="username">

            <i class="far fa-user"></i>

        </div>

        <div class="id">

            <input type="email" placeholder="Email address" name="email">

            <i class="far fa-envelope"></i>

        </div>

        <textarea cols="15" rows="5" placeholder="Enter your opinions here.." name="description"></textarea>

        <button type="submit">Send</button>

    </form>

</div>



</body>
</html>

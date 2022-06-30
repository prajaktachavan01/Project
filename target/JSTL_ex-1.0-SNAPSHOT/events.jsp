<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 15/05/2022
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="style3.css">

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <script src="https://cdn.tailwindcss.com"></script>

</head>
<body>

<nav class="bg-black text-lg text-white h-56 flex items-center justify-around w-50">

    <img src="img/vs%20(12).png" class="w-[21.5rem]">

</nav>



<section class="home" id="home">

    <div class="content">
        <h3>its time to celebrate! the best <span class="font-bold"> EVENTS IN VIT </span></h3>
    </div>

    <div class="slider-box">
        <div id="slider">
            <img src="img/Events/s1.jfif" alt="">
            <img src="img/Events/s2.jfif" alt="">
            <img src="img/Events/s3.jfif" alt="">
            <img src="img/Events/s4.jfif" alt="">
            <img src="img/Events/s5.jfif" alt="">
        </div>
        <div class="indicators">
            <span id="btn1" class="active"></span>
            <span id="btn2"></span>
            <span id="btn3"></span>
            <span id="btn4"></span>
            <span id="btn5"></span>
        </div>
    </div>








    <section class="gallery" id="gallery">

        <h1 class="heading">our <span>Events</span></h1>

        <div class="box-container">

            <div class="box">
                <img src="img/Events/g5.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g3.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g11.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g1.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g4.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g2.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g8.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g10.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

            <div class="box">
                <img src="img/Events/g9.jfif" alt="">
                <h3 class="title">photos and events</h3>
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
            </div>

        </div>

    </section>
</section>



<script>


    let menu = document.querySelector('#menu-bars');
    let navbar = document.querySelector('.navbar');

    menu.onclick = () =>{
        menu.classList.toggle('fa-times');
        navbar.classList.toggle('active');
    }

    let themeToggler = document.querySelector('.theme-toggler');
    let toggleBtn = document.querySelector('.toggle-btn');

    toggleBtn.onclick = () =>{
        themeToggler.classList.toggle('active');
    }

    window.onscroll = () =>{
        menu.classList.remove('fa-times');
        navbar.classList.remove('active');
        themeToggler.classList.remove('active');
    }

    document.querySelectorAll('.theme-toggler .theme-btn').forEach(btn =>{

        btn.onclick = () =>{
            let color = btn.style.background;
            document.querySelector(':root').style.setProperty('--main-color', color);
        }

    });

    var swiper = new Swiper(".home-slider", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
            rotate: 0,
            stretch: 0,
            depth: 100,
            modifier: 2,
            slideShadows: true,
        },
        loop:true,
        autoplay:{
            delay: 3000,
            disableOnInteraction:false,
        }
    });

    var swiper = new Swiper(".review-slider", {
        slidesPerView: 1,
        grabCursor: true,
        loop:true,
        spaceBetween: 10,
        breakpoints: {
            0: {
                slidesPerView: 1,
            },
            700: {
                slidesPerView: 2,
            },
            1050: {
                slidesPerView: 3,
            },
        },
        autoplay:{
            delay: 5000,
            disableOnInteraction:false,
        }
    });
</script>




<script>

    var slide = document.getElementById("slider");
    var btn1 = document.getElementById('btn1');
    var btn2 = document.getElementById('btn2');
    var btn3 = document.getElementById('btn3');
    var btn4 = document.getElementById('btn4');
    var btn5 = document.getElementById('btn5');

    btn1.onclick = function () {
        slide.style.transform = "translateX(0px)";
        btn1.classList.add('active');
        btn2.classList.remove('active');
        btn3.classList.remove('active');
        btn4.classList.remive('active');
        btn5.classList.remive('active');
    };
    btn2.onclick = function () {
        slide.style.transform = "translateX(-100%)";
        btn1.classList.remove('active');
        btn2.classList.add('active');
        btn3.classList.remove('active');
        btn4.classList.remove('active');
        btn5.classList.remive('active');
    };
    btn3.onclick = function () {
        slide.style.transform = "translateX(-200%)";
        btn1.classList.remove('active');
        btn2.classList.remove('active');
        btn3.classList.add('active');
        btn4.classList.remove('active');
        btn5.classList.remive('active');
    };
    btn4.onclick = function () {
        slide.style.transform = "translateX(-300%)";
        btn1.classList.remove('active');
        btn2.classList.remove('active');
        btn3.classList.remove('active');
        btn4.classList.add('active');
        btn5.classList.remive('active');
    };
    btn5.onclick = function () {
        slide.style.transform = "translateX(-400%)";
        btn1.classList.remove('active');
        btn2.classList.remove('active');
        btn3.classList.remove('active');
        btn4.classList.remove('active');
        btn5.classList.add('active');
    };

</script>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</body>
</html>

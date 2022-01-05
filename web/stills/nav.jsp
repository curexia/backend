<%--
  Created by IntelliJ IDEA.
  User: Aditya Shrivastava
  Date: 09-06-2021
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .navbar-brand img {
            width: 104px;
        }

        .body {
            font-family: 'Nunito', sans-serif;
        }

        .container-fluid.jumbotron {
            margin: 2px;
            padding: 10px;
            border: black;
            background-color: #effaff;
        }

        .carousel-inner img {
            position: absolute centre;
            margin: auto;
            width: 100%;
            height: 32rem;
        }

        .consultation_home_card {
            margin-bottom: 3rem;
        }

        .consultation_home_card span {
            margin: auto;
        }

        .salah_btn {
            position: absolute centre;
            margin-bottom: 3rem;
        }
    </style>
    <title></title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="top: 0px">
    <div class="container-fluid">
        <a class="navbar-brand" href="/"><img src="../img/logo.png"></a>
        <a class="navbar-brand brand-name" href="/">CUREXIA</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/news">News</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/medicine/search">Medicines</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/disease">Diseases</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/symptomchecker">Symptoms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/riskchecker">Risk Check</a>
                </li>


                <!-- Login sign up -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false" style="border-radius: 10px">
                        <img src="../img/acc.png" width="35px">
                    </a>
                    <%
                        if (session.getAttribute("id") == null) {
                    %>
                    <ul class="dropdown-menu dropdown-menu-end text-right" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/login">Login</a></li>
                        <li><a class="dropdown-item" href="/signup">Sign up</a></li>

                    </ul>
                    <%
                    } else {
                    %>
                    <ul class="dropdown-menu dropdown-menu-end text-right" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/user/profile">Profile</a></li>
                        <li><a class="dropdown-item" href="/user/notification">Requests</a></li>
                        <li><a class="dropdown-item" href="/user/search">Search Dr.</a></li>
                        <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    </ul>
                    <%
                        }
                    %>
                </li>
            </ul>
        </div>
    </div>
</nav><!--Main body starts here-->
</body>
</html>

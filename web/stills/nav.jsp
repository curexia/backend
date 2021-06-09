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
    <title></title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><img src="img/logo.png"></a>
        <a class="navbar-brand brand-name" href="#">CUREXIA</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item" >
                    <a class="nav-link" style="border-radius: 10px" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/medicine/search">Medicines</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/disease/search">Diseases</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="border-radius: 10px" href="/symptomchecker">Symptoms</a>
                </li>

                <!-- Login sign up -->
                <li class="nav-item dropdown" >
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false" style="border-radius: 10px">
                        <img src="img/acc.png" width="35px">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end text-right" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/login">Login</a></li>
                        <li><a class="dropdown-item" href="/signup">Sign up</a></li>

                    </ul>

                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li> -->
            </ul>
            <!-- <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form> -->
        </div>
    </div>
</nav><!--Main body starts here-->
</body>
</html>

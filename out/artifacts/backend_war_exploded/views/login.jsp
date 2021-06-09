<%@ page import="tk.curexia.constant.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gilda+Display&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gilda+Display&display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style>
        .navbar-brand img {
            width: 75px;
        }

        .body {
            font-family: 'Nunito', sans-serif;
        }


        .navbar {
            margin-bottom: 3rem;
        }

        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        .form-signin img {
            width: 190px;
            height: auto;
        }


        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }


    </style>
    <title>Login | <%=Constants.AppName()%>
    </title>
</head>

<body>
<jsp:include page="../stills/nav.jsp"/>
<body class="text-center">

<main class="form-signin">
    <form action="/login" method="post">
        <img class="mb-4" src="img/logo.png" alt="" width="72" height="57">
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <div class="form-floating">
            <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com">
            <label for="email">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password">
            <label for="pwd">Password</label>
        </div>
        <input class="w-100 btn btn-lg btn-primary" type="submit" value="Sign in">
        <%
            String getOrPost = (String) request.getAttribute("getOrPost");
            if (getOrPost.equalsIgnoreCase("post")) {
                String res = (String) request.getAttribute("process");
                if (res.equalsIgnoreCase("fail")) {
                    %>
                        <p class="mt-5 mb-3 text-muted caption-login"> User login failed! Try Again.</p>
                    <%
                }
            }else{
                %>
                    <p class="mt-5 mb-3 text-muted caption-login">Your health, our priority</p>
                <%
            }
        %>
    </form>
</main>

<!-- Main body ends here -->
<hr class="featurette-divider">

<!-- Footer starts here -->
<jsp:include page="../stills/footer.jsp"/>
<!-- Footer ends here -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>

</html>
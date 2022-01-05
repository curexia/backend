<%@ page import="tk.curexia.constant.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gilda+Display&display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <style>
        .navbar-brand img {
            width: 75px;
        }

        .body {
            font-family: 'Nunito', sans-serif;
            align-content: center;
        }


        .navbar {
            margin-bottom: 3rem;
        }

        input[type=text],
        select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=date],
        select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=email],
        select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=password],
        select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div.my-signup-container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: 85%;
        }

        .form-signup img {
            width: 190px;
            height: auto;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <title>Sign up | <%=Constants.AppName()%>
    </title>
    <jsp:include page="../stills/head.jsp"/>
</head>

<body>
<jsp:include page="../stills/nav.jsp"/>
<!-- Sign UP setup -->


<body class="text-center">

<%
    String getOrPost = (String) request.getAttribute("getOrPost");
    if (getOrPost.equalsIgnoreCase("post")) {
        String res = (String) request.getAttribute("process");
        if (res.equalsIgnoreCase("fail")) {
%>
<p class="mt-5 mb-3 text-muted caption-login"> Sign up failed! Try again with different details.</p>
<%
        }
    }
%>

<div class="container my-signup-container">
    <div>
        <form action="/signup" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Your name.." required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Your Email Address.." required>

            <label for="pwd">Password:</label>
            <input type="password" id="pwd" placeholder="Enter password" name="pwd" required>

            <label for="designation">Designation</label>
            <select id="designation" name="designation">
                <option value="Patient">Patient</option>
                <option value="Doctor">Doctor</option>
            </select>

            <label for="address">Address</label>
            <input type="text" id="address" name="address" placeholder="Your Address.." required>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" placeholder="DD-MM-YYYY" required>

            <label for="phone">Phone</label>
            <input type="text" id="phone" name="phone" placeholder="Your Phone Number.." max="9999999999" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</div>
<!--
<form class="form-inline form-signup" action="/action_page.php">
    <img class="mb-4" src="img/logo.png" alt="" width="72" height="57">
    <label for="email">Email:</label>
    <input type="email" id="email" placeholder="Enter email" name="email">
    <label for="pwd">Password:</label>
    <input type="password" id="pwd" placeholder="Enter password" name="pswd">
    <label>
        <input type="checkbox" name="remember"> Remember me
    </label>
    <button type="submit">Submit</button>
</form> -->


<!-- Main body ends here -->
<!-- Footer starts here -->
<jsp:include page="../stills/footer.jsp"/>
<!-- Footer ends here -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>

</html>
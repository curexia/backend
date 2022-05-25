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
            margin-bottom: 1rem;
        }

        input[type=number],
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
    <title>Risk Checker | <%=Constants.AppName()%>
    </title>
    <jsp:include page="../stills/head.jsp"/>
</head>
<body>
<jsp:include page="../stills/nav.jsp"/>
<!-- Sign UP setup -->
<body class="text-center">
<h1>Risk Checker</h1>
<div class="container my-signup-container">
    <%
        String getOrPost = (String) request.getAttribute("getOrPost");
        if (getOrPost.equalsIgnoreCase("post")) {
            String res = (String) request.getAttribute("result");
            if (res.equalsIgnoreCase("safe")) {
    %>
    <p class="mt-5 mb-3 text-muted caption-login">
        Your life risk is minimal. You are <span style="color: lawngreen">SAFE</span>
    </p>
    <br>
    <%
    } else if (res.equalsIgnoreCase("risky")) {
    %>
    <p class="mt-5 mb-3 text-muted caption-login">
        Your life risk is concerning. You are <span style="color: red"> NOT SAFE</span>
    </p>
    <br>
    <%
            }
        }
    %>
    <div>
        <form action="/riskchecker" method="post">
            <label for="age">Age</label>
            <input type="number" id="age" name="age" placeholder="Your age.." style="text-align: center;" required>

            <label for="dbp">Diastolic BP</label>
            <input type="number" id="dbp" name="dbp" placeholder="80.0" style="text-align: center;" required>

            <label for="sbp">Systolic BP</label>
            <input type="number" id="sbp" name="sbp" placeholder="122.0" style="text-align: center;" required>

            <label for="pvi">Poverty index</label>
            <input type="number" id="pvi" placeholder="126.0" name="pvi" style="text-align: center;" required>

            <label for="race">Race</label>
            <select id="race" name="race" style="text-align: center;">
                <option value="1.0">White</option>
                <option value="2.0">Colored</option>
            </select>

            <label for="rbc">Red blood cells count</label>
            <input type="number" id="rbc" name="rbc" placeholder="5" style="text-align: center;" required>

            <label for="wbc">White blood cells count</label>
            <input type="number" id="wbc" name="wbc" placeholder="5000" style="text-align: center;" required>

            <label for="sr">Sedimentation rate</label>
            <input type="number" id="sr" name="sr" placeholder="18" style="text-align: center;" required>

            <label for="sa">Serum Albumin</label>
            <input type="number" id="sa" name="sa" placeholder="4" style="text-align: center;" required>

            <label for="sc">Serum Cholesterol</label>
            <input type="number" id="sc" name="sc" placeholder="150" style="text-align: center;" required>

            <label for="si">Serum Iron</label>
            <input type="number" id="si" name="si" placeholder="100" style="text-align: center;" required>

            <label for="sm">Serum Magnesium</label>
            <input type="number" id="sm" name="sm" placeholder="2" style="text-align: center;" required>

            <label for="sp">Serum Protein</label>
            <input type="number" id="sp" name="sp" placeholder="7(g/dL) or 70(g/L)" style="text-align: center;" required>

            <label for="sex">Sex</label>
            <select id="sex" name="sex" style="text-align: center;">
                <option value="1.0">Male</option>
                <option value="2.0">Female</option>
            </select>

            <label for="tibc">Total Iron Binding Capacity</label>
            <input type="number" id="tibc" name="tibc" placeholder="323.0" style="text-align: center;" required>

            <label for="ts">Transferrin Saturation</label>
            <input type="number" id="ts" name="ts" placeholder="40" style="text-align: center;" required>

            <label for="bmi">Body Mass Index</label>
            <input type="number" id="bmi" name="bmi" placeholder="21" style="text-align: center;" required>

            <label for="pp">Pulse pressure</label>
            <input type="number" id="pp" name="pp" placeholder="50" style="text-align: center;" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</div>
<br />
<br />
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
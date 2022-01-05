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
    <link href="../css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/diseaseinfo.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../jsscript/ajax.js"></script>

    <style>
        .navbar-brand img {
            width: 75px;
        }

        .body {
            font-family: 'Nunito', sans-serif;
        }

        .med-search {
            width: 85%;
            padding-top: 56px;
            padding-bottom: 160px;
        }
    </style>
    <title>Diseases | Curexia</title>
</head>

<body>
<jsp:include page="../stills/nav.jsp"/>

<div class="container-fluid med-search">
    <h1 style="color:darkcyan;">
        Enter the disease you want to search:
    </h1><br>
    <div class="d-flex">
        <input class="form-control me-2" id="diseaseInfo" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="button" onclick="diseaseInfo()">Search</button>
    </div>
    <div id="disInfo"></div>
</div>

<hr class="featurette-divider">

<!-- Footer starts here -->
<jsp:include page="../stills/footer.jsp"/>
<!-- Footer ends here -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>

</html>
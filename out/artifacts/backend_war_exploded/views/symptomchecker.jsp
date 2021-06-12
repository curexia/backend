<!doctype html>
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

    <style>
        .navbar-brand img {
            width: 75px;
        }
        .body{
            font-family: 'Nunito', sans-serif;
        }
        .symptoms-search{
            width: 85%;
            padding-top: 56px;
            padding-bottom: 160px;
        }
        
    </style>
    <title>Symptoms | Curexia</title>
</head>

<body>
    <jsp:include page="../stills/nav.jsp"/>

<!-- Main body starts here -->
   <div class="container-fluid symptoms-search">
    <h2>
        Search and learn more about what might be the reason of your distress
    </h2><br>
    <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</div>



    <!-- Main body ends here -->
    <!-- Footer starts here -->
    <jsp:include page="../stills/footer.jsp"/>
    <!-- Footer ends here -->


    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>

</html>
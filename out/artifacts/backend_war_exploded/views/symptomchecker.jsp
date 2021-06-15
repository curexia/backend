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
        <link href="../css/bootstrap.min.css" rel="stylesheet">

    <style>
        .navbar-brand img {
            width: 75px;
        }
        .body{
            font-family: 'Nunito', sans-serif;
        }
    </style>
    <title>Symptoms Checker | Curexia</title>
</head>

<body>
	<!-- Header starts here -->
    <jsp:include page="../stills/nav.jsp"/>
	<!-- Header ends here -->

    <br />
	<!-- Main body starts here -->
	<div class="container main-container">
		<div id="app"></div>
	</div>
    <!-- Main body ends here -->
    <br />

	<!-- Footer starts here -->
    <jsp:include page="../stills/footer.jsp"/>
    <!-- Footer ends here -->


    <script src="../public/bundle.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
</body>

</html>
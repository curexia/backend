<%@ page import="tk.curexia.model.Medicine" %>
<%@ page import="java.util.ArrayList" %>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="../jsscript/ajax.js"></script>


    <style>
        .navbar-brand img {
            width: 75px;
        }
        .body{
            font-family: 'Nunito', sans-serif;
        }
        .med-search{
            width: 50%;
            padding-top: 56px;
            padding-bottom: 160px;
        }
        
    </style>
    <title>Medicines | Curexia</title>
</head>

<body>
<jsp:include page="../stills/nav.jsp"/>



<!---Main body starts here--->
    <%
        Medicine md = null;
        if(request.getAttribute("medicine")!=null) {
            md = (Medicine) request.getAttribute("medicine");
    %>
            <div class="container-fluid med-search">
                <h1 class="widget-title"><%=md.getName()%></h1>
                <p><%=md.getProducer()%></p>
                <p><%=md.getStorage()%></p>

                <h4>Details</h4>
                <p><%=md.getDetail()%></p>

                <h4>Contains</h4>
                <p><%=md.getContains()%></p>

                <h4>Dosage</h4>
                <p><%=md.getDosage()%></p>

                <h4>Benefits</h4>
                <h6>Main</h6>
                <ul>
                <%
                    ArrayList<String> main = md.getBeniMain();
                    for(String str:main){
                        %>
                            <li><%=str%></li>
                        <%
                    }
                %>
                </ul>
                <h6>Others</h6>
                <ul>
                    <%
                        ArrayList<String> others = md.getBeniOthers();
                        for(String str:others){
                    %>
                    <li><%=str%></li>
                    <%
                        }
                    %>
                </ul>
            </div>
    <%
        }
    %>
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
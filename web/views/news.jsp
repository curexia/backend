<%--
  Created by IntelliJ IDEA.
  User: Aditya Shrivastava
  Date: 08-04-2021
  Time: 04:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="tk.curexia.constant.Constants" %>
<%@ page import="tk.curexia.dao.NewsDAO" %>
<%@ page import="tk.curexia.model.News" %>
<%@ page import="static tk.curexia.dao.NewsDAO.getNews" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gilda+Display&display=swap" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <title>Home | <%=Constants.AppName()%>
    </title>
    <jsp:include page="../stills/head.jsp"/>
</head>

<body>
<header>
    <jsp:include page="../stills/nav.jsp"/>
</header>
<%
    ArrayList<News> news = new ArrayList<>();
    if (session.getAttribute("news") == null) {
        news = NewsDAO.getNews();
        session.setAttribute("news", news);
    } else {
        news = (ArrayList<News>) session.getAttribute("news");
    }
%>
<!-- START THE FEATURETTES -->
<div class="container midcase" style="padding: 10px">
    <h1 class="featurette-heading">Latest News</h1>
    <hr class="featurette-divider">
    <hr class="featurette-divider">
    <%
        for (News nw : news) {
    %>
    <div class="row featurette">
        <div class="col-lg-7">
            <h2 class="featurette-heading"><%=nw.getTitle()%>
            </h2>
            <p class="lead"><%=nw.getDescription()%>
            </p>
            <p><a href="<%=nw.getUrl()%>">Read more</a></p>
        </div>
        <div class="col-lg-5">
            <img class="rounded" style="padding-left: 10px;padding-right: 10px;" width="100%" height="250px"
                 src="<%=nw.getUrltoimage()%>" aria-hidden="true"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
            <rect width="100%" height="100%" fill="#777"/>
        </div>
    </div>
    <hr class="featurette-divider">
    <%
        }
    %>
    <!-- /END THE FEATURETTES -->
</div>
<!-- /.container -->
<!-- Main body ends here -->
<jsp:include page="../stills/footer.jsp"/>

<!-- js file extensions; don't bother -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>

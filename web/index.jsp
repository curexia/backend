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
    <link href="css/style.css" rel="stylesheet">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="msapplication-starturl" content="/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" charset="UTF-8">
    <script src="reg-sw.js"></script>
    <link rel="icon" href="img/icon-192x192.png" type="image/icon type">
    <link rel="manifest" href="manifest.webmanifest">
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
    <title>Home | <%=Constants.AppName()%>
    </title>
</head>

<body>
<header>
    <jsp:include page="stills/nav.jsp"/>
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


<!-- Carousel Starts here (Manav: Check for responsiveness and editing) -->
<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>

    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="bd-placeholder-img" width="100%" height="100%" src="<%=news.get(1).getUrltoimage()%>"
                 aria-hidden="true"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
            <rect width="100%" height="100%" fill="#777"/>
            </svg>
            <div class="container">
                <div class="carousel-caption text-start">
                    <h1><%=news.get(1).getTitle()%>
                    </h1>
                    <p><%=news.get(1).getDescription()%>
                    </p>
                    <p><a class="btn btn-lg btn-primary" href="<%=news.get(1).getUrl()%>">Read More</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="bd-placeholder-img" width="100%" height="100%" src="<%=news.get(2).getUrltoimage()%>"
                 aria-hidden="true"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
            <rect width="100%" height="100%" fill="#777"/>
            </svg>
            <div class="container">
                <div class="carousel-caption">
                    <h1><%=news.get(2).getTitle()%>
                    </h1>
                    <p><%=news.get(2).getDescription()%>
                    </p>
                    <p><a class="btn btn-lg btn-primary" href="<%=news.get(2).getUrl()%>">Read More</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="bd-placeholder-img" width="100%" height="100%" src="<%=news.get(3).getUrltoimage()%>"
                 aria-hidden="true"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
            <rect width="100%" height="100%" fill="#777"/>
            </svg>

            <div class="container">
                <div class="carousel-caption text-end">
                    <h1><%=news.get(3).getTitle()%>
                    </h1>
                    <p><%=news.get(3).getDescription()%>
                    </p>
                    <p><a class="btn btn-lg btn-primary" href="<%=news.get(3).getUrl()%>" target="_blank"
                          rel="noopener noreferrer">Read more</a></p>
                </div>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container midcase" style="padding: 10px">
    <!--         Try this -->

    <style>
        .btn.btn-success {
            text-align: left;
        }

        .consultation_home_card {
        }

        .consultation_home_card span {
            font-size: 14px
        }

        .consultation_home_card .col-lg-2 {
            height: 120px
        }

        .salah_btn {
            width: 100%;
            float: left;
        }

        @media (min-width: 1200px) {
            .consultation_home_card .col-lg-2 {
                height: 215px
            }
        }
    </style>

    <div class="consultation_home_card div-margin">
        <h2 class="text-center text_margin_top"><b>Get Information related to Common Diseases</b></h2>
        <div class="row text-center">
            <div class="col-lg-2 col-md-3 col-xs-4 text-center">
                <a href="/disease?name=Headache&amp;locale=en">
                    <img
                            src="data:image/webp;base64,UklGRuAUAABXRUJQVlA4WAoAAAAQAAAAiAAAiAAAQUxQSBcKAAABGYVt27YhZHUyov9RrEVLyEPliYjgCASS89ceIiIiQsKicBsAbdiI/P9W34qSFBFbolOXiAlw4DaSIu1QpuGma47+YGnbtmOSpOfJiIw0IrrMtm2NvbJXs7Jtm/v5C7Zt29MsuxKT1nMc8d73/cX7xdv7iKAo22rYMJIlCz1Afg85SdvdL4jhX9+81xaPwNzIJPUI8UXWFJJe4Uio2OjFCGIkWJaLiCJ7HsMQtpdpBYe6puIyC9ixS52aHVUgHokKlUNKJjpRBYAZkWIxRCmInZItuiRqRgJRPq+6hXJJwAZcWOGkGvNyogPzkAQ8PhersEg2HYuaqucAsspVASzQ0TJHHaiai8LsMJdYIQHgamGVt66leGLAnNRNnIAFEkCD6hQiJhuhSgHxSPj2G3dtP7B7e+d85/yZE4dPn/rLmUSUTsBEKFj9s7qovHjKlU98us0sAp+OdbbvOTA+fdfWV3/4HzgUCHBhBHAIDeqAC+Sepz55dsWspRmODdmupzzqiu9+91fdDpSxEvNGpbYH42lvPrfeK9WRoYEn3H37R7+brIRXH+usjUODEL/7nefyqLYmWy+980O/gUGrxBYDd0X6de84F/lMt029at+H/0n0yikGsW7h+AhP9w92Nuvh29n72lPvpfiUDIAIZsLGv7VcG+HG1D3veOoS9ZD4gHZT+toluNjp5k/1iPb+efnWa/7azaWppCtdzaeAcCHwoptrLmSj+cnffi7lliaFTxxDwmn+wNn6mW977t73P+NE4YlwQLYq1qm/Y86sD/2GOz+eR6CQ03IVHt0VfiZwN1q8f976cx1u/4CZyAoPiANx+YNeA46lnV541vp13bDvi2BRV/Fei+lM0HFbtxuvt761bc/57T/EJiAbH1MXhicALODLa+JD1ser87E3LncFpLsHPYahGkzM41Szz21ZP6/ml54dIjdqzWErnAB777L1tQ0Mve1DjISTgVO2C1W7mK5sW5+vkTtP3ZcszDaCapjN2RvU32x9v0Zf/wkUjhZC+ZOH8gWk3bJk/b/27/pLgOVbTukedczBfSCx8NeZFTC96jO4b3Q77JQ/iUV3P8Ies2AlXNM3/SLACAjJn+QMAKS+xIpo4y/+bMpFhKY8BGUj5hh+04IV0q/4G/euA0J7XzISsJ8AHhuFtNE7fp7yaQXq8k2HldHNbrNCmt/zG4xlFCRGTodYNjwGLiplbdbaf4iEs+rIQLHTruS8c72YNnjHb2BPmpO+9ABfBWE6AXaPldPu+UUXZQB6DUsXTm9vWjnX9s15ihCmZaAmYAq4bH6onLZ6w300SDgv11Mdt3WgMb1iBS3b59EKx9DsXau2aW8V1FqTMyS721Odk91jFHASPlx2rKA2sO186CUCGQEW1BFvW0nXtpmK4YRsAKYa/tPDRFGtPU8W5OZaLghQ3EhRbXw5fVPo3MjICeVDFgujJbWlcTlCiV0AqJNXPWOoqNvYCuV6oA1aNyLZSL202+KE+nCkYnvvMR7SoO1mJ0tqc20sv3Emad17YVGS2amS2mwbyw97Z2eGU3mcKnGmPVBO25rdFqybIvLtUODcWKOctrk4RVmsLXPCAgEIbbRZTttY6jbWFKiwBrJUKLdDF5f0q//AQTplIbyWwdVa3JwsKHJoBGqPaK0Xsv3HNV6M51/XkZj6L9zg35cOFuO57yoUU3eu+ESd3j5QTJvZ5mCBoBo7pqW4+y4r5dvr/suN3vd6RrhALb1EsGyV0dYfuEJ8DTiBeU9R1WIeh/YW0tZO7DfS66wt+500gSLLn97dKmL86jGgQ7hYZbbJ5UgMHtg3UkJbPHExec0Tkm2Dxajg87MSptVfP0rsS0lo9GiSJVGkcnxyqoBv88Xd4Wo/cSg5QWxZGpz6qztafff/9u4kHAU7l99B16rXAaE4sdPZtX3e3xaHxjq8nwelKrGLG0GggtnP7xns+xyoGk9bVDM3E3C3CEcOqXZfeeZAX+cvPgMiSHGS43mIfIi6UejGrx7VR3P9x49thNHenIs8suLdcCAPfonDzp6/rNW38Z+dbZIdVR10Vo+KV1a6gknd197W7E/bOLVwiXgVRbyn2Zy0LrsCO7oU8Kfd+70vP/ZHTt1ElkBhgyyvJ61OctEX6mEW/9y+ow/OtdNnryGrAsc5wFxNFfVXEcHl+dvkwVbt4+H/X4+cvSvIuTOQCzqqhlKoYsAJHZ67qeaHxp+mDwQoRZO8xABV5i4VkAoYNMzm/n5vo1Hjn9I3f3ZD+nEUaAIEDnqS0q0TBEYbpKqwqN9cfUGzroiNc/++i88NRvD/c+LMJou1Y64KIArMKvy/G5eM1PKdur78wODlQNc5TviIA+rMmp328yCAdzLgtPDQ2MFWM9taP7R48VhXZGKPctnFocAnxw4HuRIJ3zLHcnDp5g5NH2g0PKOGmxtHZw5OQ8UogrxcCWDvKNS2MGlFudgjxWFJHF3nj0y12+6Nnj4ZtjUzM7+vg9VEopTLg1xIITMm6ClhFSssCXKP+dn5sfZ0KxoViK/OzixOTU96IDu0SDiQgFR0RWZnqqQ3xHa4k4cgF8tzszbZHG61ms2N5sbG+urKxrxPT44alwtYOrfD4dkdvgVQHV9xmz4achGIVFhC3sbi+tr6+uZGtzeardbgWJNOUwgB1o/eEso+CKXD9iIW0b0QwVTx0sDwnJfb2cV5UN8AIlbXsgA7sLa2ODdwwlc/xaHIqNwp8JBgBXGcWvQA25tWmWFi8mSxq4eqhfXEBiqSalKqYOFSdsciKAa2riUCUBBWnvjhTXDQEqClpCVBqafpJhBCBGf1AGEAAzx9uVMy5BzuL1rIIGppiRY6xZwMWslUxzzJIolGCrATMmc5r7nQ43I0yGM4uIV6D9KdfIIFdV7xx+lFNShfVzB1EAF5oBkkh4f1+nlxLgc8xZ1KH2oudwJ3qqPOYz2Rw5pQB+pBAWhZzQEVC8EB5nBDAnQowov7stzyqRqSrVOiIhU4ONOpcKKL6g0uTD0FtUkwYXLRMVeRcGLimFeFI2oq3E+JPuHvqgb24WJARw4UG1jeAN0oLlgfjUS91ltCB6PSB1QqCGkkn1ghC7aoIKk60j0OWEk6G5cDXzhc8XFTh634A29AQjbJ5TNhKlahLKWSlboNwFOqJXnk8zDfIi1IBfMc8rD+0uzSwsnDABVVIO3sIXDzqjzGJRRs/BV5XdnQ2VTSlE2DHsOZFuAsF+OEbDaIlSi6gQ+NgtCg6ldWPULw4mHIQLhUNdJ3LqFpPBVAfQIuSxMu2FkyBC0wqT4eHgelJJYegHnIg25IzZmB4qGsDh0MLdqyKoyyZTGCEZowDHtC9KwnApgB80puYMFdTCBUMwBSbJu0zMAc8XCqR8UNFafB/MzZMgMGFBWtDll4RTnYMgOtyCP716gKcTUIYV6lT1BR5Mq/oOeqfqnBeu6fvhkAVlA4IKIKAADwLgCdASqJAIkAPpE+mUoloyIhp5ecwLASCWkAFsr+Y/6J9HPkp/jPx3/aD158vgM9At9b7BP6DvV4AVyLs0AAfmn8t/3X9M/cj4BpmXg/2AP1L+6T4a/4ngb/Yv9l7AH8o/on/i/y3sT/9nlQ+n/YC/kf9R/5H+H/yPvmevX9rPYo/WBBnqE8W5mBSywu8IYR7UErLrnMuRjOAVfn/SQ/vTtUaBcRuv2OELjTT1lJrhl1LVrqp24ZM5EvC1+h1qTSAZYkSTBJNfSHr9LcL3yjnZqIui3aWxZvM6aWhqeRe8CBINDXbPvY7vKQ6zU+R2oLtia5lp7ZcKaKSNzvOqvMRc3grwK8QMwsp8muUXBPcItO43NwiYOyUObrRbYL4VcZl1OI6mzU+1imbzlI3spcdWUNTKwEoXDZLsje92ZvhOcKr0YPtrbMzhslSheRJWdKHZMSu5CQiJGZ53Hs9JCZkp05Ro7zSpsgKs69A1Vs9W/jvDwesx93gw+iQh6GUIAA/vxdAP+JtgIqBXrdDeddN16dG3pz6GoQ98fGEZq/UNtdNKbDhnxQ6JlgMWbSzhJio7k6iUtrvTQch76Bbwmc/BQJov/dcsy/uwlhOt6R5RIir1gwkVQfhczIiX2hEbcYbw77bUddiKgbLBCofaUfHaWhDP69ofCNnXk6U5VFrUr5TaBgctI1rA3BA3YEack5uoN1xR52N5lQVA8uxcrlEdh3Jo8T5S81E5GCi58knmblDTOILEW6m+UOVR7r4Pfb9sLF4L4wumdfHlrC4Lcgw0Be9Rq5aHaOvLSELXdLZA1qi5DmSZF2IlkFL6AS3omLLRIje0btZcYH0Wb3EOdLs4h9ifv3iSJoSuSJv+KKcgKuY1f+KZAup9urM8prVShvfbEU0fv0Aux615X0vbucx8C3G5zFQczVwaU1hlSQtREsA1zcb8d7fEOA/aafdJF9DmXYMcAznYoqBorRsAIASKPtwE9VAYZARtc5/w8ANHCmNrj8MYbrrOaFfxiENqHPA4+UNWShh5G7yBQqAeny3zQqLcnNnmk5K5ABYYSrz3fGdYEvDnHqU/kwIQhAdaKzCFOXdMv8R3NiQP/ysR9TcjzdLgA64dmzZRRYlAxvz+S77HIFWPN2SXVupuZ7WlJf5VdO1lJ/4nHL62CKMnbnVbUcPtsxjKvHnof+mVSICA24JtyTMzWdolaTXXiBE2MwVXI7o3pB3uH+rqvj4w18cDdWeFUqMgIswZahpiqeuJZgkKReaF/fYVH9A8VqwfJBMW1kBgSZxkh9sS/BoS0VJLnUbPkMVeP+K6BFRU6nm6UT+3DzqfIB8IxzFwePvA+c8+hx/gQcXRf9FypHPmnt8rtttnsSNsL21N1A/IOfRPydFUPiOWkvdoYsSwuk//UaSNHS3To0dq5JamvT9Lz8/INhGtLe2CNxDmVpCQ4f9c9PnDfoyjqt8Wa6KbGEoE7rl3D83UN3Idd6hBwiv2MtQ6Rk2uv5Uz2a7BJBUI2pyv4Hp3JvVTA21ift/ddZl6UAgPfW9zgZGfuf5y+9zUDS/30u5fGdnl7PEYkXUHJ7vo4twNklR2EqG1vFQLCzAQFXA8Uj4QXcYeV2i3gSiYJxl935zHDLIeO12wm2ltW7Y1YQKzupuGV/i0suxbhxxJvUCTnzoFTe6/ImYEEdK19GupkM78nZnHvafBBEe9tNEaM+fFglNWQRSWggi8254BX24MsWpyZYjdR+HPA+scjgK3GO3gV83RQgL6s+6yGYjVvbGs/M6KhbLapz5R1S17x1qXNrrHZOnYxpMtj8ry7nsFmY7fRhekl8MWrOakw8WDKy/M8q+5oQSHN+gJyPvb/Dwv4LepZ9qt3GtoBXeVFIlQ1Pmpf0XuLZaX1DuOljY5fPm39/1kpQ6EqEa3vr/DP6GmqH/BIpfTf8jzF8d+WD1ieV5x/RBOx2+cDSomgABtV0lvhzE8OklWR6/68JPBHOjwNmmLilm/eosG5SR8sgL7XkLvl5PTfB5WIsXQFXpbLVS+f/FZ7ovntE8Jr7KidzSD7XO24JU8aLL71RLo4DJrUNzz75DQ2aIM//py4SjKpExjevGV0yPAuG7P+39IeKHSAfGX3pw6scFZMNOdu/5FDd5BPfbF9ora5jHUwT/+O25/9rvdwjTjNX9AJxf8aKpxSs8viob6xScv7IBq+agv2Mx22qBzhc3zmAhtmQG7y86h4Ps97i+fh0PuUJWXsPcLaRH/WHgfwIt8/hGg2Sf2QZUM/B6rszAiBIXWdP5K4a7cDUyOE8MNpPRVTodp0XsPpJ6JvvrqutnjAkff7Nb4X6xqx+sWAnr0C9VbzxpIGzxSEcg39EV6CxSln6JfBFbA3IvzqzGNFYwj2GddI14/+GvDCIq+3rvGm0QW4FWoRx1D8ZjCEHDHwXElwI0UmUf74h2Gik1fKeqraNgFgpXXvx56wjQDYON6Jk+aPjfSNNbPawI1kfBK6/lu0S88/Hb4vBjYA91cOMJwdZ+XtyecrWBm74Lg7sd9Xbi1Y5HUnU7ClOz8pk0E2owwmocCGwB21m8ehjatiEtgmL4nbeNpTjazj+V7NxtkKfatKfPUN/hAOx+40M4ZC0bWIF8Lwv5070CctEdFKHU/1W04F9ReLre/q1dlhehhCyHwLe4X8cCJu6sAp/tH8houYfPoCFoZdXXWtz5n8R10B/r2cuwX+OAON/0mvdozhLHDbYvffXLqp7ttVUSMF9h3GU57iSxqHwxncMt3u43SuxgABdfFn7SBBEN5F/EID/FtAPO9VxPhJwsfEdW6qxAoGhN2WA9OVXzViykY/g7i/f60/nNFWKUMa8dRPtnr7GdNm/wSogn/wwp/btsuDA0vL3K0v0a9Oz8xpu+QeptWy5toRk/AaiOxDQJ/PMKI30T+m1BIzEofakuZarKZnCMABKAGlgr5p5fOBFw2umQzm0cWoAmkQ+BLnlr1TV+AmZf/jA2GYTtgf9fOQ0qozYBQXN8bDL+1IADQVXsJZONugrVx/pFzwMsUwu+nNKUXzksa/djiUuXnq860Ot1EThFlE0lAv4AOGqzmkc3r4XJe574m/NAFuRPKacn5bMzyKzrqTFRJDfmV+53YAUN5MXoCNs0DIw2f0T2MYyDRrGOTo/1uw1zs7XsAEkeE4+bjrxAO1xAv0EbErOYFQs1uoK3f/vrP+vo5A6XYcHNxcR9+tuzd3eUIF/fpMPY6AewzImluE0+mSjEFTZ9fSh89WgBZILDYVkHAPdpLjwAaq2huK5XiZoWst0+TkhbNhUpSFL/e2i/atTDADq8udct7AMT5v8uksUvYj/fXtJKq9ekmlTzYAvdP1hQ+qVpJzxwWcPWmw8MSO2jg9gOyAava3+8YcJteZuhspfAfiOlCNGGHCOUcgHJJQP9GD9YAs2QGFadvZ5cZgVt/3IfAYzySDabD4G974ptthTn8qFrtRPJHRipB0HO0GxWxztXv6XlCvJHVg4aGwJbKRq10Wx7tETCdZ5ECZKks4GfVIF3/71r//zp3/+c2///OKAIIF8tpXXQzUCAkZ54x1ODGmUr7zXNr67bOOKvBIQt6vvGmNXU9geSk8u92nBBKMgzpNwzCf9yVAAAAAA"
                            class="responsive"/></a>
                <span><a href="/disease?name=Headache&amp;locale=en">Headache</a></span>
            </div>
<%--            <div class="col-lg-2 col-md-3 col-xs-4 text-center">--%>
<%--                <a href="/disease?name=Headache&amp;locale=en">--%>
<%--                    <img--%>
<%--                            src="data:image/webp;base64,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"/></a>--%>
<%--                <span><a href="/disease?name=headache&amp;locale=en">Headache</a></span>--%>
<%--            </div>--%>
            <div class="col-lg-2 col-md-3 col-xs-4 text-center">
                <a href="/disease?name=Backache&amp;locale=en"><img
                        src="data:image/webp;base64,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"/></a>
                <br />
                <span><a href="/disease?name=Backache&amp;locale=en">Piles</a></span>
            </div>
            <div class="col-lg-2 col-md-3 col-xs-4 text-center">
                <a href="/disease?name=Fever&amp;locale=en"><img
                        src="data:image/webp;base64,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"/></a>
                <br />
                <span><a href="/disease?name=Fever&amp;locale=en">Fever</a></span>
            </div>
            <div class="col-lg-2 col-md-3 col-xs-4 text-center">
                <a href="/disease?name=Cough&amp;locale=en"><img
                        src="data:image/webp;base64,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"/></a>
                <br />
                <span><a href="/disease?name=Cough&amp;locale=en">Cough</a></span>
            </div>
            <div class="col-lg-2 col-md-3 col-xs-4 text-center">
                <a href="/disease?name=Ulcer&amp;locale=en"><img
                        src="data:image/webp;base64,UklGRuAUAABXRUJQVlA4WAoAAAAQAAAAiAAAiAAAQUxQSBcKAAABGYVt27YhZHUyov9RrEVLyEPliYjgCASS89ceIiIiQsKicBsAbdiI/P9W34qSFBFbolOXiAlw4DaSIu1QpuGma47+YGnbtmOSpOfJiIw0IrrMtm2NvbJXs7Jtm/v5C7Zt29MsuxKT1nMc8d73/cX7xdv7iKAo22rYMJIlCz1Afg85SdvdL4jhX9+81xaPwNzIJPUI8UXWFJJe4Uio2OjFCGIkWJaLiCJ7HsMQtpdpBYe6puIyC9ixS52aHVUgHokKlUNKJjpRBYAZkWIxRCmInZItuiRqRgJRPq+6hXJJwAZcWOGkGvNyogPzkAQ8PhersEg2HYuaqucAsspVASzQ0TJHHaiai8LsMJdYIQHgamGVt66leGLAnNRNnIAFEkCD6hQiJhuhSgHxSPj2G3dtP7B7e+d85/yZE4dPn/rLmUSUTsBEKFj9s7qovHjKlU98us0sAp+OdbbvOTA+fdfWV3/4HzgUCHBhBHAIDeqAC+Sepz55dsWspRmODdmupzzqiu9+91fdDpSxEvNGpbYH42lvPrfeK9WRoYEn3H37R7+brIRXH+usjUODEL/7nefyqLYmWy+980O/gUGrxBYDd0X6de84F/lMt029at+H/0n0yikGsW7h+AhP9w92Nuvh29n72lPvpfiUDIAIZsLGv7VcG+HG1D3veOoS9ZD4gHZT+toluNjp5k/1iPb+efnWa/7azaWppCtdzaeAcCHwoptrLmSj+cnffi7lliaFTxxDwmn+wNn6mW977t73P+NE4YlwQLYq1qm/Y86sD/2GOz+eR6CQ03IVHt0VfiZwN1q8f976cx1u/4CZyAoPiANx+YNeA46lnV541vp13bDvi2BRV/Fei+lM0HFbtxuvt761bc/57T/EJiAbH1MXhicALODLa+JD1ser87E3LncFpLsHPYahGkzM41Szz21ZP6/ml54dIjdqzWErnAB777L1tQ0Mve1DjISTgVO2C1W7mK5sW5+vkTtP3ZcszDaCapjN2RvU32x9v0Zf/wkUjhZC+ZOH8gWk3bJk/b/27/pLgOVbTukedczBfSCx8NeZFTC96jO4b3Q77JQ/iUV3P8Ies2AlXNM3/SLACAjJn+QMAKS+xIpo4y/+bMpFhKY8BGUj5hh+04IV0q/4G/euA0J7XzISsJ8AHhuFtNE7fp7yaQXq8k2HldHNbrNCmt/zG4xlFCRGTodYNjwGLiplbdbaf4iEs+rIQLHTruS8c72YNnjHb2BPmpO+9ABfBWE6AXaPldPu+UUXZQB6DUsXTm9vWjnX9s15ihCmZaAmYAq4bH6onLZ6w300SDgv11Mdt3WgMb1iBS3b59EKx9DsXau2aW8V1FqTMyS721Odk91jFHASPlx2rKA2sO186CUCGQEW1BFvW0nXtpmK4YRsAKYa/tPDRFGtPU8W5OZaLghQ3EhRbXw5fVPo3MjICeVDFgujJbWlcTlCiV0AqJNXPWOoqNvYCuV6oA1aNyLZSL202+KE+nCkYnvvMR7SoO1mJ0tqc20sv3Emad17YVGS2amS2mwbyw97Z2eGU3mcKnGmPVBO25rdFqybIvLtUODcWKOctrk4RVmsLXPCAgEIbbRZTttY6jbWFKiwBrJUKLdDF5f0q//AQTplIbyWwdVa3JwsKHJoBGqPaK0Xsv3HNV6M51/XkZj6L9zg35cOFuO57yoUU3eu+ESd3j5QTJvZ5mCBoBo7pqW4+y4r5dvr/suN3vd6RrhALb1EsGyV0dYfuEJ8DTiBeU9R1WIeh/YW0tZO7DfS66wt+500gSLLn97dKmL86jGgQ7hYZbbJ5UgMHtg3UkJbPHExec0Tkm2Dxajg87MSptVfP0rsS0lo9GiSJVGkcnxyqoBv88Xd4Wo/cSg5QWxZGpz6qztafff/9u4kHAU7l99B16rXAaE4sdPZtX3e3xaHxjq8nwelKrGLG0GggtnP7xns+xyoGk9bVDM3E3C3CEcOqXZfeeZAX+cvPgMiSHGS43mIfIi6UejGrx7VR3P9x49thNHenIs8suLdcCAPfonDzp6/rNW38Z+dbZIdVR10Vo+KV1a6gknd197W7E/bOLVwiXgVRbyn2Zy0LrsCO7oU8Kfd+70vP/ZHTt1ElkBhgyyvJ61OctEX6mEW/9y+ow/OtdNnryGrAsc5wFxNFfVXEcHl+dvkwVbt4+H/X4+cvSvIuTOQCzqqhlKoYsAJHZ67qeaHxp+mDwQoRZO8xABV5i4VkAoYNMzm/n5vo1Hjn9I3f3ZD+nEUaAIEDnqS0q0TBEYbpKqwqN9cfUGzroiNc/++i88NRvD/c+LMJou1Y64KIArMKvy/G5eM1PKdur78wODlQNc5TviIA+rMmp328yCAdzLgtPDQ2MFWM9taP7R48VhXZGKPctnFocAnxw4HuRIJ3zLHcnDp5g5NH2g0PKOGmxtHZw5OQ8UogrxcCWDvKNS2MGlFudgjxWFJHF3nj0y12+6Nnj4ZtjUzM7+vg9VEopTLg1xIITMm6ClhFSssCXKP+dn5sfZ0KxoViK/OzixOTU96IDu0SDiQgFR0RWZnqqQ3xHa4k4cgF8tzszbZHG61ms2N5sbG+urKxrxPT44alwtYOrfD4dkdvgVQHV9xmz4achGIVFhC3sbi+tr6+uZGtzeardbgWJNOUwgB1o/eEso+CKXD9iIW0b0QwVTx0sDwnJfb2cV5UN8AIlbXsgA7sLa2ODdwwlc/xaHIqNwp8JBgBXGcWvQA25tWmWFi8mSxq4eqhfXEBiqSalKqYOFSdsciKAa2riUCUBBWnvjhTXDQEqClpCVBqafpJhBCBGf1AGEAAzx9uVMy5BzuL1rIIGppiRY6xZwMWslUxzzJIolGCrATMmc5r7nQ43I0yGM4uIV6D9KdfIIFdV7xx+lFNShfVzB1EAF5oBkkh4f1+nlxLgc8xZ1KH2oudwJ3qqPOYz2Rw5pQB+pBAWhZzQEVC8EB5nBDAnQowov7stzyqRqSrVOiIhU4ONOpcKKL6g0uTD0FtUkwYXLRMVeRcGLimFeFI2oq3E+JPuHvqgb24WJARw4UG1jeAN0oLlgfjUS91ltCB6PSB1QqCGkkn1ghC7aoIKk60j0OWEk6G5cDXzhc8XFTh634A29AQjbJ5TNhKlahLKWSlboNwFOqJXnk8zDfIi1IBfMc8rD+0uzSwsnDABVVIO3sIXDzqjzGJRRs/BV5XdnQ2VTSlE2DHsOZFuAsF+OEbDaIlSi6gQ+NgtCg6ldWPULw4mHIQLhUNdJ3LqFpPBVAfQIuSxMu2FkyBC0wqT4eHgelJJYegHnIg25IzZmB4qGsDh0MLdqyKoyyZTGCEZowDHtC9KwnApgB80puYMFdTCBUMwBSbJu0zMAc8XCqR8UNFafB/MzZMgMGFBWtDll4RTnYMgOtyCP716gKcTUIYV6lT1BR5Mq/oOeqfqnBeu6fvhkAVlA4IKIKAADwMACdASqJAIkAPpFAmUolo6IhptS8uLASCWkAFso+U/5j+LX6u+UH+f+mv2B7DftVyWOqv9V3Uf1X5ZfIHsT4AXsbwN9niAD6ff8H+s+tP9P5r/YL0Ufz7/Xeqn/B8Ez6v/tPYA/kX9H/6f979iH/j+8D2m/Tn/r9wb+S/0//l/sV76vsH/cH2LP1ZP7TXz3ZxK1nDo+jQLuIcPkFC1ea1GcAq/PQC/38kgpzxnzPsZlJnjuoXcRSMwOViUMMFsRQOX9p92DdF8mWzYLagqyTbFLIUVQcyFomnoxhw3tcL4VMnLqtn8d7WJ3DaStDMd621YKIEE8Ias6as19YGghUiJwFhiW1AYcLKpSZwuQpHHtPV5pYQ3HNQe7oJDPq07QFdDJ8D30ACdG4XReOPJYfMo5r6yWHo0SQ9rkaAeljT3IbKWV78rwADRGh67bbldrENSrE780sgVsYmhwgYkVk8saXxVgVU71UBz9SMv1FahEfSMOZg0fYvyWrnngdC2B8g3LssW7vkwf/l6e4AqwAAP78XP8+JtY+NaWOysgkI7u//jtZphf4Vn3AIskfG7p8mQoaHwMFqXrhmzWUM0Xm/vA9UVZHI9y5LWmuhlvdTvR1se2/oi3rYhlJhR7zHrVkylUHymRJW5CPuAfDPs3wfPUqIZkqXAqry9Ff8p6jLbRz7Dx/CgbNfk4KVO1HOrQwVHCZM3uu+grpDl2yXWEBdTlWZCW84OpnKlaF1STTCrXGFgeQERqh3PSz3jCKcWjDMbBNP9cvRJ+9U0zCVZU2gxbX2Iu1bg4ui943URI0kirza43BwMBMl50fLXmbxekNXMOej1jUfJ3Vxq9ga7noZKzLnDTnYAODauiy8KQevo6ydqHfYzJFV3y5L8a9KfKC8bS7fvX8/d3AFhgZq/rFqTJSbw23UFDqm9flsY9acq1xiayq+NP2TXabWPlcsOCPpv8zUhbxMxAdsVqBsPRINmGU9EyERDeq5kQK5uHvhvEp9WwCGIQLhAKLQBFnQGvn+iwohhYV/pvfOCDnjruXhKDcs70G4X0jALriEmrFIT8xan993wXKyYEPJ/6ypudFUhYNv8zWNrOonqztcBhGjOxNvlxle1JZkCt7WQSd3KBfXPF7exHiGyfGAB1FTsxc4+FBkRr9enaTIUXdmecPxbC20bF3DTrCbzzCUSP4nIb+14W+3o6DgYOIg79aQyv0dBwULJFqYeKKuYqFdatw+ortZ00za60QSlG/Od57U2Ix1BN+fClAasrrmP5KBovPBSI1XhCrinRZVZToT+N+UY1baRoOEHkmHycZpyLbg0B8DsBGesVAJX/jr7HYSRgs/yLo/O4k+2YHf3l8fx8GvRCwNVNM1g6FJhae8bkucq4FBptmxUk0hIj6V9E7XN1eyWdrZqnd22gCfP8DGqYMmeBDl/P0VjtL/Pup7GDZkHj6iyHZGO06JO67T8P7wlGQO2F8fHp8LiVfa5DOQAa7hyW+skmuWj6jle+ZRehvIYSIwgEPE6yXTb0z+VggnHr1uTekI+qRSlC4wONOxVZ2IpxdC3VnHW1oXPOieQ53Sb8CWQ2x2+b+Rn08YjkyGMvJi8M2h2qz7xeECadoftcL4roSABzodh50MvmGbVItiGyOHIbl5O7ghIGx4h4t5EmYV+YWi7y6MsponXW8v0kiBVpGVQVkTNT9yvle9E5uqgcM0+8DyhGk08VUwSinlnVRtnK5nAvnE1brV+d8BVHvjp1uqEYlmDja3uEacvsVKM1/Wlc+1sa2K+UudO7m9JZBGwNAu7z8z7F6LHmVHHcnxgO5KO3hfUfgDR2ynYH/BNokza/umBQQOgO9l88jXNeUmzg8MgxKisW4rXaZ1777j4HTLZ+DQjs0/O1PyoREd9bdAwW8e+kSP+QUc0kCWb0VaIahrho/iYAoCB/MbHfLZ7Q6hYUYvGNMEm8X5QKWEXfIjb0FcBhpjWWyGyljrigYclsFBOLigOV1wCPGS4763U/0myL/pnR2sMPhE1HOuB7wnKIT5SD3WegFviJtFaqgMG6AFq2Niv5uB1yvUKVHewxwqe91gAw7zdtKLiW/yJFCeo8DFCxmQEG5yMpuoKyWLHXTyMut3dKaMEDB+g13mMVmhICGiy364a4+NzRgstYWG4wAH7ZtEh37IYjG08sSJrg5+dbn7BWx3mXdiodmPiz1cCjCWe+EjT3hEfj6cgfh/UR5NdT/nkuZF8inQiWZlVuiFVEh+ye38Wo+57+y/Tq/6R7TwFZxWkuidg8pIGGSsAFcmrGEcTfEI12tC/vXlaEZQhwBTZP1f13ubG/9uc/+O30/FRGWxUkv4PXVlxcT2c+ncgQkd/yBMjTMRA+5fU0XN5C6iVCvReQ/8og/OMsGB4rQ2EbQLg4/YHGn+TXjpcDoGevVU788SgUAXp4UHOs5a41mt2A4j280tKkeuRfTtBhXrpaqWfUcwUJlnwBa4XuIVzuu0wDvzwsj4qc1E+8rwpl6u6Z+VHjcMf9/r+U3m6QZF8/gnExFkzGUrXlrRjBIsZDo3UJ3hfHCzmFDQQbxNl+sgwyh9yIaK/nJHjDNVg0zPA9bR6IDlKbV3bFs0YqW+86ic1wN/jjlRYr+zPlVyR5fYnNBdqc10X/je7/ep2Wl5DSpXFFRKDhe2VqPNxxL4lq8y3jFHg0mcafD1B5L/DDxUJk3oinweVwx/BfLbSUNWfH9MPjlv/OvPmMUh+komH0Lx6GbgFEo1Y6HEcNOBvfU363VbloQe/eOacAQAAARBvZLzQRZzCEPzQaN0r+8KJCNpf9SxEuyIv65qi31hT7UPj6LnfhIwMxcH65nbGnyHciFNt7TNXtqao/2tnmSfwwqOS5qaokWzNnmZl3ErDx/VyE/qGWeGFpWS+IHC4NDjZV/Z38yM42XRtd87GtvW1I558xyJvcSABK5deXjsAaEOPv3wB0M8G3ceU2WOVFFzW0YIthvYT8zfVchrJJFlA/66EGmqpH4BuSxf3Ywx1EAEGWJID1z245EYBn1xJ0psS5aF1ZmmsqRw2M9uJcQuL90VIw/+OV3+cGaOadzIqgOwRZeg4YXxYaF/MiYpzuY+dg3UpQVXqnlnIz1Iw94R1MIxKVEL4CIIVAaevLXGF63/pbAng9uPpE2xC3c28Mg7ChqwzUIMisy6QHVCHEl02um1yb1trb4Dw0wiwBsMXmPhA3Iov54DyiQ/Ocaldw8cZHUbzjHpXGL8zIhyc5KFDClFzNkSmIjXAAxpaUHEH/7WgidGmwvlbvofDDIPhnwEgCT41Z6PueAlL+7699eveZx/bknyhEAiSOjRWIiclMH2aDnFDBiuPdENFpkd2Xn+VC9ul0v0D5Y7ga+XA5y5ivHqW/phyyfhsJP7CM0va0dWts5vdd0UeTPGhsAyRPYpbu3vLnqDFiiZDZ5UZa/pZ/ABJsHONCUL9ADuJ9bKZgwtcfj/95XgqBfXQfdsjJOGXSzuHdHkDJ2niTXPgNGDA6fShVzD46PC+W4IdaYDntnZB4CgHKQ/ytEBpv9IDPXZDdyCzZ6M8S3UQosQTv+W+ag7nzP7QGGnBLG0XC8STeiPWYbtC9FYbdV1yqvUkTd0vOIlSKD9yVAAAAA"/></a>
                <span><a href="/disease?name=Ulcer&amp;locale=en">Ulcer</a></span>
            </div>
        </div>
        <h4 class="text-center text_margin_top"><a href="/disease" style="text-decoration: none">Click here to search
            other diseases</a></h4>
    </div>
</div>

<!-- START THE FEATURETTES -->
<div class="container midcase" style="padding: 10px">
    <h1 class="featurette-heading">Latest News</h1>
    <hr class="featurette-divider">
    <hr class="featurette-divider">
    <%
        for (int i = 4; i < 10; i++) {
    %>
    <div class="row featurette">
        <div class="col-lg-7">
            <h2 class="featurette-heading"><%=news.get(i).getTitle()%>
            </h2>
            <p class="lead"><%=news.get(i).getDescription()%>
            </p>
            <p><a href="<%=news.get(i).getUrl()%>">Read more</a></p>
        </div>
        <div class="col-lg-5">
            <img class="rounded" style="padding-left: 10px;padding-right: 10px;" width="100%" height="250px"
                 src="<%=news.get(i).getUrltoimage()%>" aria-hidden="true"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
            <rect width="100%" height="100%" fill="#777"/>
        </div>
    </div>
    <hr class="featurette-divider">
    <%
        }
    %>
    <div class="text-center"><a class="btn btn-lg btn-primary" href="/news">Read More</a></div>
    <hr class="featurette-divider">
    <!-- /END THE FEATURETTES -->
</div>
<!-- /.container -->
<!-- Main body ends here -->
<jsp:include page="stills/footer.jsp"/>

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

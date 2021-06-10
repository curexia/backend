function ajaxreq()
{
    let data = $("#medsearch").val();
    $.ajax({
        type: "POST",
        url: "/medicine/search?name=" + data,
        dataType: "text json",
        contentType: "application/json",
        cache: false,
        timeout: 600000,
        success: function (result) {
            var table = $("<br /><h2>Medicine available</h2><br/>");
            for(var i=0;i<result["result"].length;i++) {
                table.append("" +
                "<br />" +
                "<div class='container2'>"+
                   "<div>" +
                       "<img src='"+result["result"][i]["image"]+"' class='iconDetails'> " +
                   "</div>" +
                   "<div style='margin-left:60px;'> " +
                       "<h4><a href='/medicine/info?code="+result["result"][i]["code"]+"'>"+result["result"][i]["name"]+"</a></h4> " +
                   "<div style='font-size:.6em'>" + result["result"][i]["desc"] + "</div> " +
                   "<div style='float:left;font-size:.6em'>"+ result["result"][i]["price"] +"</div> " +
                "</div>");
            }
            $("#details").html(table);
        },
        error: function (xhr, status, error) {
            alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
        }
    });




}
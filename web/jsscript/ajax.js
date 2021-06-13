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


function diseaseInfo()
{
 let data = $("#diseaseInfo").val();
    $.ajax({
        type: "POST",
        url: "/disease?name=" + data,
        dataType: "text json",
        contentType: "application/json",
        cache: false,
        timeout: 600000,
        success: function (result) {
            var p = $("<br /><h2 style=\"color:rgb(107, 250, 250);\">"+result["result"]["name"]+"</h2><br/>");
            Object.keys(result["result"]["details"]).forEach(function(key) {
                if(key.localeCompare("Definition")===0){
                    p.append("" +
                        "<br/>" +
                        "<div class='container2'>" +
                        "<div style='white-space: pre-line;font-size: .6em'>" + result["result"]["details"][key]+"</div>" +
                        "</div>");
                }
            })
            Object.keys(result["result"]["details"]).forEach(function(key) {
                if(key.localeCompare("Definition")===0){
                }else{
                    p.append("" +
                        "<div class='container2'>" +
                            "<div> <h4 style=\"color:rgb(107, 250, 250);\">"+ key +"</h4></div>" +
                            "<div style='white-space: pre-line;font-size: .6em'>" + result["result"]["details"][key]+"</div>" +
                        "</div>");
                }
            })
            $("#disInfo").html(p);
        },
        error: function (xhr, status, error) {
            alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
        }
    });
}




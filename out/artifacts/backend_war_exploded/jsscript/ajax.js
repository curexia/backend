function ajaxreq()
{
    let data = $("#medsearch").val();
    $.ajax({
        type: "POST",
        url: "https://adimdsearch.herokuapp.com/api/medicine/search?name=" + data,
        dataType: "json",
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (result) {

            var table = $("<table><tr><th><strong>Medicine available</strong></strong></th></tr>");
            for(var i=0;i<result.length;i++) {
                table.append("<tr><td>Name:</td><td>" + result["result"][i]["name"] + "</td></tr>");
                table.append("<tr><td>Description:</td><td>" + result["result"][i]["desc"] + "</td></tr>");
                table.append("<tr><td>Image:</td><td>" + result["result"][i]["image"] + "</td></tr>");
                table.append("<tr><td>Price:</td><td>" + result["result"][i]["price"] + "</td></tr>");

            }
            $("#details").html(table);
        },
        error: function (xhr, status, error) {
            alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
        }
    });




}
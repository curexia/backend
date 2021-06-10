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
        success: function (result, status, xhr) {
            var table = $("<table><tr><th><strong>Medicine available</strong></strong></th></tr>");

            table.append("<tr><td>Name:</td><td>" + result["result"][3]["name"] + "</td></tr>");
            table.append("<tr><td>Description:</td><td>" + result["result"][1]["desc"] + "</td></tr>");
            table.append("<tr><td>Image:</td><td>" + result["result"][2]["image"] + "</td></tr>");
            table.append("<tr><td>Price:</td><td>" + result["result"][4]["price"] + "</td></tr>");


            $("#details").html(table);
        },
        error: function (xhr, status, error) {
            alert("Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText)
        }
    });




}
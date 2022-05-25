window.onload = function () {
    const params = new URLSearchParams(window.location.search);
    if(params.has("name")){
        let disease = params.get("name");
        document.getElementById("diseaseInfo").value = disease;
        diseaseInfo();
    }
}
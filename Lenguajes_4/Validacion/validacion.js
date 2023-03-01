
function validar(){
    let fname = document.getElementById("frame").value;

    submitOK = "true";

    if(fname.length > 5){
        alert("El nombre no puede tener mas de 5 caracteres")
        submitOK = "false";
    }
    if(submitOK == "false"){
        return false;
    }
}
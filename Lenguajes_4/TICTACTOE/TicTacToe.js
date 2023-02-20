let bandera = false
let turno = 0
let tab = new Array()
window.onload=function(){
    let iniciar = document.getElementById("iniciar")
    iniciar.addEventListener("click",iniciarJuego)
}
function iniciarJuego(){
    bandera = true
    let jugador1 = document.getElementById("jugador1")
    let jugador2 = document.getElementById("jugador2")
    if(jugador1.value==""){
        alert("Ingrese el nombre del jugador 1")
        jugador1.focus();
    } else{
        if(jugador2.value==""){
            alert("Ingrese el nombre del jugador 2")
            jugador2.focus();
        } else{
            tab[0] = document.getElementById("btn1")
            tab[1] = document.getElementById("btn2")
            tab[2] = document.getElementById("btn3")
            tab[3] = document.getElementById("btn4")
            tab[4] = document.getElementById("btn5")
            tab[5] = document.getElementById("btn6")
            tab[6] = document.getElementById("btn7")
            tab[7] = document.getElementById("btn8")
            tab[8] = document.getElementById("btn9")
            
            arr.map((item, index) => {
                
            })
        }
    }
}
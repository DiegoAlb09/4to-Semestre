function say(){
    let st = document.getElementById('add').value.toString()
    let uno = st.charAt(0).toString()
    let dos = uno.toUpperCase() + st.slice(1,st.length)
    alert(dos)

    document.getElementById("pp").innerHTML = dos
    document.getElementById("add").value = dos;
}
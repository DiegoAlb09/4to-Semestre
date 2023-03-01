function say2(){
    let st = document.getElementById('add').value.toString()
    let pri = ""
    let pri2 = ""
    let dos = ""
    let total = ""

    uno = st.split(" ")

    for (let i in uno){
        pri  =uno[i].toString()
        pri2 = pri.charAt(0).toString()
        dos  = pri2.toUpperCase() + pri.slice(1,st.length)

        total = total.concat(dos+" ")
    }
    document.getElementById("add").value = total
}
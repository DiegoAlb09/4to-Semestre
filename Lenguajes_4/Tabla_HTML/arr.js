let arr = new Array()
arr.push("1")
arr.push("2")
arr.push("3")
arr.push("Juan")
arr.push("Maria")

arr.map((item, index) => {
    console.log(item, index)
    document.write("<tr><td> Numero" + index + "</td>")
    document.write("   <td> arr" + item + "</td>      </tr>")
})
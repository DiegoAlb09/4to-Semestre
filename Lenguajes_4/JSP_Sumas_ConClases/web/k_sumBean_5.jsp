<%-- 
    Document   : k_sumBean_5
    Created on : 10/03/2023, 08:02:42 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <script type="text/javascript">
            function validate()
            {
                var a = document.getElementById("num1");
                var b = document.getElementById("num2");
                var valid = true;
                if(num1.value.length<=0 || num2.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else{
                        if(!IsNumeric(num1.value) || !IsNumeric(num2.value))
                            alert("Enter a number");
                    valid = false;
                }
                return valid;
            };

        </script>
    
  
        <title>JSP Emisor </title>
    </head>
    <body>
        <p>  aqui iban los jsp:useBean  </p>
       
       <form action="k_sumBean_6.jsp" method="get" onsubmit="return validate();" >
           numero  : <input type="text" name="num1"  />  <br>
           numero  : <input type="text" name="num2"  />  <br>
                    
           <input type="submit" value="Submit" >
       </form>
          
       
       
       
        <h1>Emisor   </h1>
    </body>
</html>


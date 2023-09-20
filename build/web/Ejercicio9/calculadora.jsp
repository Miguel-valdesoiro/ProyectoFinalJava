<%-- 
    Document   : calculadora
    Created on : 16-nov-2022, 17:40:25
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>9</title>
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
                width : 40px
            }

        </style>
    </head>
    <body>
        <h2>Calculadora</h2>

        <%
            
            String n1 = "";
            String n2 = "";
            String r = "";
            try{
            if (request.getParameter("cmdSuma") != null) {
                n1 = request.getParameter("txtN1");
                n2 = request.getParameter("txtN2");
                double s1 = Double.parseDouble(n1) + Double.parseDouble(n2);
                r = s1 + "";
            }
             if (request.getParameter("cmdResta") != null) {
                n1 = request.getParameter("txtN1");
                n2 = request.getParameter("txtN2");
                double s1 = Double.parseDouble(n1) - Double.parseDouble(n2);
                r = s1 + "";
            }
             if (request.getParameter("cmdMulti") != null) {
                n1 = request.getParameter("txtN1");
                n2 = request.getParameter("txtN2");
                double s1 = Double.parseDouble(n1) * Double.parseDouble(n2);
                r = s1 + "";
            }
             if (request.getParameter("cmdDivi") != null) {
                n1 = request.getParameter("txtN1");
                n2 = request.getParameter("txtN2");
                double s1 = Double.parseDouble(n1) / Double.parseDouble(n2);
                r = s1 + "";
            }
            }catch(Exception e){
            
            }
        %>



    <center>
        <form action =' '>

            <input type='text' name ='txtN1' placeholder="N1" value ='<%=n1%>' />
            <input type='text' name ='txtN2' placeholder ='N2' value ='<%=n2%>' />
            <input type='text' name ='txtR' value ='<%=r%>' disabled />
            <input type='submit' name ='cmdSuma' value =' + ' />
            <input type='submit' name ='cmdResta' value =' - ' />
            <input type='submit' name ='cmdMulti' value =' * ' />
            <input type='submit' name ='cmdDivi' value = ' / ' />
        </form>  
    </center>

</body>

</html>

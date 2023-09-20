<%-- 
    Document   : index
    Created on : 14-nov-2022, 18:43:11
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2</title>
        <!-- Llamamos a la hoja de estilos-->
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
                width: 30px;
            }


        </style>
    </head>
    <body>  
        <h1>2.- Vamos a  construir la tabla del 3 etiqueta de scriples - out.print.</h1>

        <!-- Cajitas con las que vamos a logearnos en una página -->
        <!-- Vamos a utilizar scriples-->

        <%
            for (int i = 1; i < 13; i++) {
                out.print(" <center> ");
                out.print("<input type ='text' value ='3' />&nbsp;&nbsp;*");
                out.print("<input type ='text' value =' "  + i + " '/>&nbsp;&nbsp;=");
                out.print("<input type ='text' value =' " + (3* i) + " '/><br> ");
                out.print(" </center> ");
            }
        %>   
    </body>
</html>

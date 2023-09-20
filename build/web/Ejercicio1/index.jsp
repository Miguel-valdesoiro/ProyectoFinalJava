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
        <title>1</title>
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
        <h1>1.- Vamos a  construir la tabla del 3</h1>
        
        <!-- Cajitas con las que vamos a logearnos en una página -->
       <!-- Vamos a utilizar expresiones-->
     
        <% 
            for(int i =1;i<13;i++){
         %>   
    <center>       
         <input type ='text' value ='3' />&nbsp;*
         <input type ='text' value ='<%= i %>'/>&nbsp;=
         <input type ='text' value ='<%=3* i %>'/><br> 
    </center>         
          <%    
            System.out.println(3+ " x "+i+" = "+(3*i)); 
              }
             %>       
    </body>
</html>

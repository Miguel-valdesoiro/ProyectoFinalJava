<%-- 
    Document   : index
    Created on : 15-nov-2022, 17:22:02
    Author     : pedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Combo Box</title>

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
        <h2>5.-Tabla de Multiplicar utilizando el Boton Combobox (Lista Desplegable</h2>


        <%
            String n = "0";
            boolean entrar = false;
            boolean entrarMensaje = false;
            if (request.getParameter("cmdEnviar") != null) {
                n = request.getParameter("cboNumero");
                if (n != null) {
                    entrar = true;
                } else {
                    entrarMensaje = true;
                }
            }
        %>


    <center>
        <!-- la tabla de multiplicar lo seleccionamos de un boton radio --->
        <form action =' '>  
            5. Seleccione un número: 
            <!-- los  nombre en name tienen que ser todos un nombre en común en este caso rNumero permite agrupar-->
            <!--- form lo que va a haceer es recoger la información del radio buton cuando pulsamos el cmdEnviar--->
            <!-- action = ' ' dice que la pagina va a recoger la información--->


            <select name="cboNumero" size="1">
                <option value="4">4</option>  
                <option value="5">5</option> 
                <option value="6">6</option> 
                <option value="7">7</option> 
                <option value="8">8</option> <br><br>
            </select>


            <!-- una vez declarados cada vez que se teclee un numero aparecerá la tabla entera-->
            <!--- submit lo que va a hacer es reenviar la informacion al form action--->
            <input  type = 'submit' name='cmdEnviar' value ='ENVIAR'  /><br><br>

        </form> 
    </center>

    <!--- lo vamos a pintar el resultado aqui--->
    <%
        if (entrar) {
            for (int i = 1; i < 13; i++) {
    %>   
    <center>       
        <input type ='text' value ='<%= n%>'/>&nbsp;*
        <input type ='text' value ='<%= i%>'/>&nbsp;=
        <input type ='text' value ='<%=Integer.parseInt(n) * i%>'/><br> 
    </center>         
    <%
            }
        }
    %>       

    <%
        if (entrarMensaje == true) {
            out.print("<br><center><input style='width:50%;' type ='text' value='DEBE SOLUCIONAR UNA OPCION' /></center>");
        }
    %>



</body>
</html>

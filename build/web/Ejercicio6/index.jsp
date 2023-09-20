<%-- 
    Document   : index
    Created on : 15-nov-2022, 19:55:05
    Author     : pedro
--%>

<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diccionario Ejercicio 6</title>
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
            }

        </style>
    </head>
    <body>
        <h2>6.- Traducir palabras del Ingles al Español (hashMap)</h2>

        <%
            String ingles = "";
            String spanish = "";
            if (request.getParameter("cmdValidar") != null) {
                ingles = request.getParameter("txtIngles");
                spanish = diccionario(ingles.toLowerCase());
                if (spanish == null){
                    spanish ="Palabra no registrada";
            }
            }

        %>
    <center>

        <form action =' ' >

            <!--- vamos a hacer 2 cajitas una para que introduzca la palabra y otra que será la traduccion--->

            <input type ='text' name ='txtIngles' value='<%=ingles%>' placeholder ='Ingles'/>
            <input type ='text' name ='txtSpanish' value='<%=spanish%>' placeholder ='Español' disabled />

            <input type ='submit'  name ='cmdValidar' value ='Traducir' /> 

        </form>
    </center>
</body>
</html>
<%!
    public String diccionario(String ingles) {

        String spanish = "";
        Map<String, String> diccionario_sh = new HashMap<>();
        diccionario_sh.put("tool", "herramienta");
        diccionario_sh.put("tree", "arbol");
        diccionario_sh.put("apple", "manzana");
        diccionario_sh.put("run", "correr");
        diccionario_sh.put("break", "romper");

        spanish = diccionario_sh.get(ingles);

        return spanish;
    }
%>
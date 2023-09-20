<%-- 
    Document   : index
    Created on : 16-nov-2022, 16:34:09
    Author     : pedro
--%>

<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>8</title>
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
            }

        </style>
    </head>
    <body>
    <center><h2>Mostrar los días, meses y años desde una fecha de Nacimiento</h2></center>
        <%
            String anios = "";
            String meses = "";
            String dias = "";
            String fecha = " ";
            if (request.getParameter("cmdEnviar") != null) {
                fecha = request.getParameter("txtNacimiento");
                try {
                    String[] p = fecha.split("-");

                    int anio = Integer.parseInt(p[0]);
                    int mes = Integer.parseInt(p[1]);
                    int dia = Integer.parseInt(p[2]);

                    LocalDate fnacimiento = LocalDate.of(anio, mes, dia);
                    LocalDate factual = LocalDate.now();

                    Period periodo = Period.between(fnacimiento, factual);
                    anios = periodo.getYears() + " AÑOS";
                    meses = periodo.getMonths() + " MESES";
                    dias = periodo.getDays() + " DIAS";
                } catch (Exception e) {
                   
                }
            }
        %>

    <center>
        <form action =' '>
            <!---Lable como en java--->
            <label for=''lblNacimiento'>Seleccione fecha de Nacimiento.... </label>
            <input type='date' name="txtNacimiento" value='<%=fecha%>'>
            <input type='submit' name='cmdEnviar' value='ENVIAR' /> <br><br>
            <input type="text" value='<%=dias%>' placeholder="DIAS" disabled />
            <input type="text" value='<%=meses%>' placeholder="MESES" disabled />
            <input type="text" value='<%=anios%>' placeholder="AÑOS" disabled />

        </form>
    </center>  

</body>
</html>

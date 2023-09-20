<%-- 
    Document   : coordenada_Polar
    Created on : 22-nov-2022, 19:41:59
    Author     : pedro
--%>

<%@page import="entrada.Metodos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COORDENADAS POLARES</title>
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
                width: 180px;
            }
        </style>

    </head>
    <body>
    <center> <h1>Coordenadas Polares</h1></center>



        <%
            String x = "";
            String y = "";
            String r = "";
            String a = "";
            String m = "";
            //ENTRADA
            
             String x = "";
            String y = "";
            String r = "";
            String a = "";
            String m = "";
            if (request.getParameter("cmdCalcular") != null) {
                try {
                    x = request.getParameter("txtX");
                    y = request.getParameter("txtY");

                    //PROCESO                    
                    double[] res = convertirCartesianaToPolar(Double.parseDouble(x), Double.parseDouble(y));

                    //SALIDA    
                    
                    r = res[0] + "";
                    a = res[1] + "";
                } catch (Exception e) {
                    m = "ENTRADA INCORRECTA";
                }
            }

        %>
    <center>
        <form action="http://localhost:8081/ProyectoWebTarde_Pedro/Servlet6">
            <!-- ENTRADA -->
            <input type='text' name='txtX' value='<%=x%>' placeholder='X'/>
            <input type='text' name='txtY' value='<%=y%>' placeholder='Y'/>
            <!-- BOTON -->
            <input type='submit' name='cmdCalcular' >
            <input type="text" <style="width:200px" name="txtSalida" value='<%=m%>' placeholder="MENSAJE"<br><br>

                   <!-- SALIDA -->
                   <br><label> Radio   </label>
                   <input type='text' name='txtR' value='<%=r%>' placeholder='RADIO'/><br>
                   <label>Angulo</label>
                   <input type='text' name='txtA' value='<%=a%>' placeholder='ANGULO'/>






        </form>

    </center>










</body>
</html>
<%!
    public double[] convertirCartesianaToPolar(double x, double y) {
        double[] res = new double[2];
        double radio = Metodos.redondear_decimal(Math.sqrt(x * x + y * y));
        double angulo = Metodos.redondear_decimal(Math.atan(y / x) * 180 / Math.PI);
        res[0] = radio;
        res[1] = angulo;
        return res;
    }


%>
<%-- 
    Document   : index
    Created on : 16-nov-2022, 18:54:36
    Author     : pedro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>10.- Bases de Datos</title>
        <style>
            input[type=text] {
                text-align:center;
                border-radius: 5px;
                border: 2px solid #39c;
                width: 100px;
            }
            .redondear {
                width: 40px;
                height: 40px;
                border: 2px solid black;
                border-radius: 60px;
            }

        </style>
    </head>
    <body>
        <h1>mostrar todos los valores de una base de datos</h1>
        <%
            String url = "jdbc:mysql://localhost:3306/colegio";
            String usuario = "root";
            String clave = "";

            //para trabajar en web necesitamos registrar la clase
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(url, usuario, clave);
            try {
                if (conexion != null) {

                    String query = "SELECT * FROM alumno;";

                    PreparedStatement ps = conexion.prepareStatement(query);
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {

                        String codigo = rs.getString(1);
                        String nombre = rs.getString(2);
                        int edad = rs.getInt(3);
                        double estatura = rs.getDouble(4);
                        String foto = rs.getString(5);
                        String ruta = request.getContextPath() + "/Ejercicio10/image/" + foto;
                        System.out.println("RUTA: " + ruta);

        %>
    <center>
        <input type ='text' value='<%=codigo%>'  disabled/>
        <input type ='text' value='<%=nombre%>' disabled />
        <input type ='text' value='<%=edad%>' disabled />
        <input type ='text' value='<%=estatura%>' disabled/>
        <img class ='redondear' src='<%=ruta%>'><br>

    </center>

    <%

                }
            } else {
                out.print("ERROR DE CONEXION");
            }

        } catch (Exception e) {
            out.print("ERROR: NO SE HA PODIDO HACER LA CONSULTA");
        }


    %>
</body>
</html>

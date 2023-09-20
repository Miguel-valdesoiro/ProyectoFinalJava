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
        <title> empresa </title>
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
            String url = "jdbc:mysql://localhost:3306/igualdad";
            String usuario = "root";
            String clave = "";
           
            //para trabajar en web necesitamos registrar la clase
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(url, usuario, clave);
            try {
                if (conexion != null) {
                
                    String query = "SELECT * FROM empresa;";
                        
                    PreparedStatement ps = conexion.prepareStatement(query);
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {
                        
                        String razon_Social = rs.getString(2);
                        String cif_Empresa = rs.getString(3);
                        String domicilio_Social = rs.getString(4);
                        String forma_juridica = rs.getString(5);
                        String year = (String) rs.getString(6);
                        String responsable_Empresa = rs.getString(7);
                        String cargo_responsable_Empresa = rs.getString(8);
                        String sector_Empresa = rs.getString(9);
                        String cnae_Empresa = rs.getString(10);
                        String convenio_Colectivo_Empresa = rs.getString(11);
                        String mujeres_Empresa = rs.getString(12);
                        String hombres_Empresa = rs.getString(13);
                        String centros_Empresa = rs.getString(14);
                        String contacto_Empresa = rs.getString(15);
                        String mail_Empresa = rs.getString(16);
                        String tlf_Empresa = rs.getString(17);
                        String usu_Alta = rs.getString(18);
                        String fecha_Inicio_Contrato = (String) rs.getString(19);
                        String fecha_Final_Contacto = (String)rs.getString(20);
                        String fecha_Inicio_Plan_Igualdad =(String) rs.getString(21);
                        String fecha_Final_Plan_Igualdad =(String) rs.getString(22);
                        

        %>
    <center>
        
        
        <input type ='text' value='<%=razon_Social%>'  disabled/>
        <input type ='text' value='<%=cif_Empresa%>' disabled />
        <input type ='text' value='<%=domicilio_Social%>' disabled />
        <input type ='text' value='<%=forma_juridica%>' disabled/>
        <input type ='text' value='<%=year%>'  disabled/>
        <input type ='text' value='<%=responsable_Empresa%>' disabled />
        <input type ='text' value='<%=cargo_responsable_Empresa%>' disabled />
        <input type ='text' value='<%= sector_Empresa%>' disabled/>
        <input type ='text' value='<%=cnae_Empresa%>'  disabled/>
        <input type ='text' value='<%=convenio_Colectivo_Empresa%>' disabled />
        <input type ='text' value='<%=mujeres_Empresa %>' disabled />
        <input type ='text' value='<%=hombres_Empresa%>' disabled/>
        <input type ='text' value='<%=centros_Empresa%>'  disabled/>
        <input type ='text' value='<%=contacto_Empresa%>' disabled />
        <input type ='text' value='<%=mail_Empresa%>' disabled />
        <input type ='text' value='<%=tlf_Empresa%>' disabled/>
        <input type ='text' value='<%=usu_Alta %>' disabled />
        <input type ='text' value='<%=fecha_Inicio_Contrato%>' disabled/>
        <input type ='text' value='<%=fecha_Final_Contacto%>'  disabled/>
        <input type ='text' value='<%=fecha_Inicio_Plan_Igualdad%>' disabled />
        <input type ='text' value='<%=fecha_Final_Plan_Igualdad%>' disabled />
       

    </center>

    <%

                }
            } else {
                out.print("ERROR: NO SE HA PODIDO HACER LA CONSULTA");
            }

        } catch (Exception e) {
            out.print("ERROR: CONEXION");
        }


    %>
</body>
</html>

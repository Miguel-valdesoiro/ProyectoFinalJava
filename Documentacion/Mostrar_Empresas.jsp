<%-- 
    Document   : index
    Created on : 16-nov-2022, 18:54:36
    Author     : pedro
--%>

<%@page import="Metodo_Administrador.Operaciones_Administrador"%>
<%@page import="java.sql.*"%>

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
                width: auto;
            }

            a{

            }

            form{
                display: flex;
                flex-wrap: wrap;
                left: 20%;
                width: 80%;
                height: auto;
                gap: .3rem;
                padding: .5rem;
                align-items: center;
                justify-content: center
            }

        </style>
    </head>
    <body>
        <h1>mostrar todos los valores de una base de datos</h1>
        <form action="action">
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <input type ='text' value=''/>
            <button type ='submit' value="submit">Añadir</button>
        </form>
        <%
            String url = "jdbc:mysql://localhost:3306/igualdad";
            String usuario = "root";
            String clave = "";

            //para trabajar en web necesitamos registrar la clase
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(url, usuario, clave);
            String id = "";
            try {
                if (conexion != null) {
                    String query = "SELECT * FROM empresa;";

                    PreparedStatement ps = conexion.prepareStatement(query);
                    ResultSet rs = ps.executeQuery();
                    int vuelta = 0;
                    while (rs.next()) {

                        id = rs.getString(1);
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
                        String fecha_Final_Contacto = (String) rs.getString(20);
                        String fecha_Inicio_Plan_Igualdad = (String) rs.getString(21);
                        String fecha_Final_Plan_Igualdad = (String) rs.getString(22);
                        vuelta++;


        %>
        <form action ="Mostrar_Empresas.jsp" >
            <input type ='text' value='<%=id%>'/>
            <input type ='text' value='<%=razon_Social%>'/>
            <input type ='text' value='<%=cif_Empresa%>'/>
            <input type ='text' value='<%=domicilio_Social%>'/>
            <input type ='text' value='<%=forma_juridica%>'/>
            <input type ='text' value='<%=year%>'/>
            <input type ='text' value='<%=responsable_Empresa%>'/>
            <input type ='text' value='<%=cargo_responsable_Empresa%>'/>
            <input type ='text' value='<%= sector_Empresa%>'/>
            <input type ='text' value='<%=cnae_Empresa%>'/>
            <input type ='text' value='<%=convenio_Colectivo_Empresa%>'/>
            <input type ='text' value='<%=mujeres_Empresa%>'/>
            <input type ='text' value='<%=hombres_Empresa%>'/>
            <input type ='text' value='<%=centros_Empresa%>'/>
            <input type ='text' value='<%=contacto_Empresa%>'/>
            <input type ='text' value='<%=mail_Empresa%>'/>
            <input type ='text' value='<%=tlf_Empresa%>'/>
            <input type ='text' value='<%=usu_Alta%>'/>
            <input type ='text' value='<%=fecha_Inicio_Contrato%>'/>
            <input type ='text' value='<%=fecha_Final_Contacto%>'/>
            <input type ='text' value='<%=fecha_Inicio_Plan_Igualdad%>'/>
            <input type ='text' value='<%=fecha_Final_Plan_Igualdad%>'/>
            <button type ='submit' name='cmdActualizar'/>Actualizar</button>
        <button type ='submit' name='cmdEliminar'/>Eliminar</button>
    <input type='hidden' name="txtOculto" value="<%=id%>" />
</form>

<%

            }
        } else {
            out.print("ERROR: NO SE HA PODIDO HACER LA CONSULTA");
        }

    } catch (Exception e) {
        out.print("ERROR: CONEXION");
    }
    Operaciones_Administrador operacion = new Operaciones_Administrador();
    if (request.getParameter("cmdEliminar") != null) {
        String oculto = request.getParameter("txtOculto");
        System.out.println("oculto = " + oculto);
        if (operacion.eliminarEmpresa(oculto)) {
%>
<script>
    location.replace('https://pablomonteserin.com');
</script>
<%
        }
    }


%>
</body>
</html>

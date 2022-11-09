
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("almacen");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .datos{
            border-style: solid;
            border-color: black;
            height: 150px;
            width: 400px;
            margin: auto;
        }
        .datos2{
            margin: auto;
            height: 100px;
            width: 350px;
        }
        .crud,table,.crud2{
            margin: auto;
        }
        a{
            display: grid;
            justify-content: center;
        }
        .form{
            border-style: solid;
            border-color: black;
            height: 150px;
            width: 600px;
            margin: auto;
        }
        h1,h2{
            text-align: center;
        }
        .input{
            margin: auto;
            text-align: center;
            padding-top: 50px;
        }

    </style>
    <body>
        <div class="datos">
            <div class="datos2">
                <p>SEGUNDO PARCIAL TEM-742</p>
                <p>NOMBRE:EDSON RAMIRO CALLE MAYTA</p>
                <p>CARNET: 5471258</p>
            </div>
        </div>
        <div class="crud">
            <h2>PRODUCTOS</h2>
            <div class="crud2">
                <p><a href="MainController?op=nuevo">Nuevo producto</a></p>
                
                <table border =1>
                    <tr>
                        <th>Id</th>
                        <th>Descripcion</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                        <th>Categoria</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                    <%
                        if (lista != null) {
                            for (Producto item : lista) {

                    %>
                    <tr>
                        <td><%= item.getId()%></td>
                        <td><%= item.getDescripcion()%></td>
                        <td><%= item.getCantidad()%></td>
                        <td><%= item.getPrecio()%></td>
                        <td><%= item.getCategoria()%></td>
                        <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                        <td><a href="MainController?op=eliminar&id=<%= item.getId()%>" onclick="return confirm('Estas seguro de eliminar?')">Eliminar</a></td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </table>
            </div>
        </div>
    </body>
</html>

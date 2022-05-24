<%-- 
    Document   : ListarReserva
    Created on : 4 de nov. de 2021, 19:36:01
    Author     : bielm
--%>

<%@page import="model.Reserva"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Reserva</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        <%
            ArrayList<Reserva> listarReserva = (ArrayList<Reserva>) request.getAttribute("listarReserva");
        %>
        
        <h2 class="text-center">Lista Reserva</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Data de Entrada</th>
                    <th>Data de Saída</th>
                    <th>Atualizar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Reserva r : listarReserva){
                %>
                <tr>
                    <td><%=r.getId_reserva()%></td>
                    <td><%=r.getData_entrada()%></td>
                    <td><%=r.getData_saida()%></td>
                    <td> <a href="view/Reserva/AtualizarReserva.jsp?idReserva=<%=r.getId_reserva()%>"> Atualizar </a> </td>
                    <td> <a href="view/Reserva/ExcluirReserva.jsp?idReserva=<%=r.getId_reserva()%>"> Excluir </a> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

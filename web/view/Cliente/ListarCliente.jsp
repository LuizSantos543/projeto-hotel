<%-- 
    Document   : ListarCliente
    Created on : 4 de nov. de 2021, 19:18:34
    Author     : bielm
--%>

<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cliente</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>

        <%
            ArrayList<Cliente> listarCliente = (ArrayList<Cliente>) request.getAttribute("listarCliente");
        %>
        <h2 class="text-center">Lista Cliente</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>RG</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th>Atualizar</th>
                    <th>Excluir</th>
                    <th>Check-in</th>
                    <th>Check-out</th>
                </tr>
            </thead>
            <tbody>

                <%
                    for (Cliente c : listarCliente) {
                %>

                <tr>
                    <td><%=c.getId_cliente()%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getRg()%></td>
                    <td><%=c.getCpf()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEmail()%></td>
                    <td> <a href="view/Cliente/AtualizarCliente.jsp?idCliente=<%=c.getId_cliente()%>"> Atualizar </a> </td>
                    <td> <a href="view/Cliente/ExcluirCliente.jsp?idCliente=<%=c.getId_cliente()%>"> Excluir </a> </td>
                    <td> <a href="view/Reserva/CadastrarReserva.jsp?idCliente=<%=c.getId_cliente()%>"> Check-in </a> </td>
                    <td> <a href="view/Check-out/RealizarCheck-out.jsp?idCliente=<%=c.getId_cliente()%>"> Check-out </a> </td>
                </tr>
                <%
                    }
                %>

            </tbody>
        </table>
                <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

<%-- 
    Document   : ListarQuarto
    Created on : 4 de nov. de 2021, 19:43:02
    Author     : bielm
--%>

<%@page import="model.Quarto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Quarto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
     
        
        <%
            ArrayList<Quarto> listarQuarto = (ArrayList<Quarto>) request.getAttribute("listarQuarto");
        %>
        <h2 class="text-center">Lista Quarto</h2>
            <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Número</th>
                    <th>Valor</th>
                    <th>Tipo</th>
                    <th>Atualizar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Quarto q : listarQuarto){
                %>
                <tr>
                    <td><%=q.getId_quarto()%></td>
                    <td><%=q.getNumero()%></td>
                    <td><%=q.getValor()%></td>
                    <td><%=q.getTipo()%></td>
                    <td> <a href="view/Quarto/AtualizarQuarto.jsp?idQuarto=<%=q.getId_quarto()%>"> Atualizar </a> </td>
                    <td> <a href="view/Quarto/ExcluirQuarto.jsp?idQuarto=<%=q.getId_quarto()%>"> Excluir </a> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

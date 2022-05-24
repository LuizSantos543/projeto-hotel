<%-- 
    Document   : ListarConsumo
    Created on : 4 de nov. de 2021, 19:47:11
    Author     : bielm
--%>

<%@page import="model.Consumo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Consumo</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        <h1>Lista Consumo</h1>
        
        <%
            ArrayList<Consumo> listarConsumo = (ArrayList<Consumo>) request.getAttribute("listarConsumo");
        %>
        
        <h2 class="text-center">Lista Consumo</h2>
            <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Produto</th>
                    <th>Data Realizada</th>
                    <th>Valor</th>
                    <th>Atualizar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    double total = 0;
                    for(Consumo c : listarConsumo){
                %>
                <tr>
                    <td><%=c.getId_consumo()%></td>
                    <td><%=c.getProduto()%></td>
                    <td><%=c.getData_realizada()%></td>
                    <td><%=c.getValor()%></td>
                    <td> <a href="view/Consumo/AtualizarConsumo.jsp?idConsumo=<%=c.getId_consumo()%>"> Atualizar </a> </td>
                    <td> <a href="view/Consumo/ExcluirConsumo.jsp?idConsumo=<%=c.getId_consumo()%>"> Excluir </a> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

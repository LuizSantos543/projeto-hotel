<%-- 
    Document   : ListarProduto
    Created on : 4 de nov. de 2021, 19:40:42
    Author     : bielm
--%>

<%@page import="model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Produto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        <h1>Lista Produto</h1>
        
        <%
            ArrayList<Produto> listarProduto = (ArrayList<Produto>) request.getAttribute("listarProduto");
        %>
        
         <h2 class="text-center">Lista Produto</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Quantidade</th>
                    <th>Descrição</th>
                    <th>Preço</th>
                    <th>Atualizar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Produto p : listarProduto){
                %>
                <tr>
                    <td><%=p.getId_produto()%></td>
                    <td><%=p.getQuantidade()%></td>
                    <td><%=p.getDescricao()%></td>
                    <td><%=p.getPreco()%></td>
                    <td> <a href="view/Produto/AtualizarProduto.jsp?idProduto=<%=p.getId_produto()%>"> Atualizar </a> </td>
                    <td> <a href="view/Produto/ExcluirProduto.jsp?idProduto=<%=p.getId_produto()%>"> Excluir </a> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

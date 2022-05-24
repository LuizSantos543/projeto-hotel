<%-- 
    Document   : ExcluirConsumo
    Created on : 6 de nov. de 2021, 13:35:54
    Author     : bielm
--%>

<%@page import="modelDAO.ConsumoDAO"%>
<%@page import="model.Consumo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Consumo</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        <%
            String idConsumo = request.getParameter("idConsumo");
            Consumo c = ConsumoDAO.getRegistroById(Integer.parseInt(idConsumo));
        %>
        
        <section class="contact-clean">
            <form action="/Final_Project/ControllerConsumo" method="post">
                <h2 class="text-center">Tem certeza de que quer excluir esses dados?</h2>
                <input type="hidden" name="idConsumo" value="<%=c.getId_consumo()%>">

                Produto: <input type="text" name="txtProduto" value="<%=c.getProduto()%>" disabled=""><br>
                Data Realizada: <input type="text" name="txtData_realizada" value="<%=c.getData_realizada()%>" disabled=""><br>
                Valor: <input type="text" name="txtValor" value="<%=c.getValor()%>" disabled=""><br>

                <input type="submit" name="acao" value="Excluir">

            </form>
        </section>
    </body>
</html>

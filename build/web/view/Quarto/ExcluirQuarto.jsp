<%-- 
    Document   : ExcluirQuarto
    Created on : 6 de nov. de 2021, 16:14:10
    Author     : bielm
--%>

<%@page import="modelDAO.QuartoDAO"%>
<%@page import="model.Quarto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Quarto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        
        <%
            String idQuarto = request.getParameter("idQuarto");
            Quarto q = QuartoDAO.getRegistroById(Integer.parseInt(idQuarto));
        %>
        
        <section class="contact-clean">
            <form action="/Final_Project/ControllerQuarto" method="post">
                <h2>Tem certeza de que quer excluir esses dados?</h2>
                <input type="hidden" name="idQuarto" value="<%=q.getId_quarto()%>">

                Número: <input class="form-control" type="text" name="txtNumero" value="<%=q.getNumero()%>" disabled="">
                Valor: <input class="form-control" type="text" name="txtValor" value="<%=q.getValor()%>" disabled="">
                Tipo: <input class="form-control" type="text" name="txtTipo" value="<%=q.getTipo()%>" disabled="">
                

                <input class="btn btn-primary" type="submit" name="acao" value="Excluir">
                <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />

            </form>
        </section>
    </body>
</html>

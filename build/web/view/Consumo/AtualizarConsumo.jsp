<%-- 
    Document   : AtualizarConsumo
    Created on : 6 de nov. de 2021, 13:35:42
    Author     : bielm
--%>

<%@page import="modelDAO.ConsumoDAO"%>
<%@page import="model.Consumo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Consumo</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idConsumo = request.getParameter("idConsumo");
                Consumo c = ConsumoDAO.getRegistroById(Integer.parseInt(idConsumo));
            %>
            
            
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerConsumo" method="post">
                        <h2 class="text-center">Atualiza Consumo</h2>
                        <input type="hidden" name="idConsumo" value="<%=c.getId_consumo()%>">

                        Novo Produto: <input  class="form-control" type="text" name="txtProduto" value="<%=c.getProduto()%>">
                        Nova Data Realizada: <input class="form-control" type="date" name="txtData_realizada" value="<%=c.getData_realizada()%>">
                        Novo Valor: <input class="form-control" type="number" name="txtValor" value="<%=c.getValor()%>"><br>

                         <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>

<%-- 
    Document   : AtualizarProduto
    Created on : 6 de nov. de 2021, 15:26:55
    Author     : bielm
--%>

<%@page import="modelDAO.ProdutoDAO"%>
<%@page import="model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Produto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idProduto = request.getParameter("idProduto");
                Produto p = ProdutoDAO.getRegistroById(Integer.parseInt(idProduto));
            %>
            
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerProduto" method="post">
                        <h2 class="text-center">Atualiza Produto</h2>
                        <input type="hidden" name="idProduto" value="<%=p.getId_produto()%>">

                        Nova Quantidade: <input  class="form-control" type="number" name="txtQuantidade" value="<%=p.getQuantidade()%>"><br>
                        Nova Descrição: <input class="form-control" type="text" name="txtDescricao" value="<%=p.getDescricao()%>"><br>
                        Novo Preço: <input class="form-control" type="number" name="txtPreco" value="<%=p.getPreco()%>"><br>

                        <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                         <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>

<%-- 
    Document   : AtualizarQuarto
    Created on : 6 de nov. de 2021, 16:08:16
    Author     : bielm
--%>

<%@page import="modelDAO.QuartoDAO"%>
<%@page import="model.Quarto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Quarto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idQuarto = request.getParameter("idQuarto");
                Quarto q = QuartoDAO.getRegistroById(Integer.parseInt(idQuarto));
            %>
            
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerQuarto" method="post">
                        <h2 class="text-center">Atualiza Quarto</h2>
                            <input type="hidden" name="idQuarto" value="<%=q.getId_quarto()%>">

                            Novo Número: <input  class="form-control" type="number" name="txtNumero" value="<%=q.getNumero()%>">
                            Novo Valor: <input class="form-control" type="number" name="txtValor" value="<%=q.getValor()%>">
                            Novo Tipo: <input class="form-check-input" type="radio" id="simples" name="txtTipo" value="<%=q.getTipo()%>">
                                              <label class="form-check-label" for="html">Simples</label>
                                              <input class="form-check-input" type="radio" id="luxo" name="txtTipo" value="<%=q.getTipo()%>">
                                              <label class="form-check-label" for="css">Luxo</label><br><br>

                            <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
               </div>
           </section>
    </body>
</html>

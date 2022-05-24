<%-- 
    Document   : ExcluirReserva
    Created on : 6 de nov. de 2021, 16:46:13
    Author     : bielm
--%>

<%@page import="modelDAO.ReservaDAO"%>
<%@page import="model.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Reserva</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        
        <%
            String idReserva = request.getParameter("idReserva");
            Reserva r = ReservaDAO.getRegistroById(Integer.parseInt(idReserva));
        %>
        
        <section class="contact-clean">
        <form action="/Final_Project/ControllerReserva" method="post">
            <h2 class="text-center">Tem certeza de que quer excluir esses dados?</h2>
            <input type="hidden" name="idReserva" value="<%=r.getId_reserva()%>">
            
            Data de Entrada: <input class="form-control" type="text" name="txtData_entrada" value="<%=r.getData_entrada()%>" disabled=""><br>
            Data de Saída: <input class="form-control" type="text" name="txtData_saida" value="<%=r.getData_saida()%>" disabled=""><br>
            
            <input class="btn btn-primary" type="submit" name="acao" value="Excluir">
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
            
        </form>
        </section>
    </body>
</html>

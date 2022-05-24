<%-- 
    Document   : AtualizarReserva
    Created on : 6 de nov. de 2021, 16:43:09
    Author     : bielm
--%>

<%@page import="modelDAO.ReservaDAO"%>
<%@page import="model.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Reserva</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idReserva = request.getParameter("idReserva");
                Reserva r = ReservaDAO.getRegistroById(Integer.parseInt(idReserva));
            %>
            
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerReserva" method="post">
                        <h2 class="text-center">Atualiza Reserva</h2>
                        <input type="hidden" name="idReserva" value="<%=r.getId_reserva()%>">

                        Nova Data de Entrada: <input  class="form-control" type="date" name="txtData_entrada" value="<%=r.getData_entrada()%>"><br>
                        Nova Data de Saída: <input class="form-control" type="date" name="txtData_saida" value="<%=r.getData_saida()%>"><br>

                        <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>

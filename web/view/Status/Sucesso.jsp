<%-- 
    Document   : Sucesso
    Created on : 04/11/2021, 14:47:07
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso</title>
    </head>
    <body>
        <strong> <font color="green"> <h3> Operação realizada com sucesso! </h3> </strong><br>
        <a href="../home.jsp">Voltar</a>
       
        
        <%
            //Enviar para uma página depois de cadastrar, listar, exluir ou atualizar.
            //RequestDispatcher rd = request.getRequestDispatcher("../home.jsp");
            //rd.forward(request, response);
        %>
    </body>
</html>

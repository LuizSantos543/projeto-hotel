<%-- 
    Document   : Erro
    Created on : 04/11/2021, 14:50:58
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <strong>
            <font color="red">
                <h2>Erro!</h2>
                
                <h3>
                    <%
                    Exception erro = (Exception) request.getAttribute("erro");
                    %>
        
                    <%=erro.getMessage()%>
                </h3>
            </font>
        </strong>
         <a href="../home.jsp">Voltar</a>
    </body>
</html>

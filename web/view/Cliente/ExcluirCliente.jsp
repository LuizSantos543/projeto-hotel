<%-- 
    Document   : ExcluirCliente
    Created on : 6 de nov. de 2021, 11:11:06
    Author     : bielm
--%>

<%@page import="model.Cliente"%>
<%@page import="modelDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cliente</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        
        <%
            String idCliente = request.getParameter("idCliente");
            Cliente c = ClienteDAO.getRegistroById(Integer.parseInt(idCliente));
        %>
        
        <section class="contact-clean">
        <form action="/Final_Project/ControllerCliente" method="post">
            <h2 class="text-center">Tem certeza de que quer excluir esses dados?</h2>
            <input type="hidden" name="idCliente" value="<%=c.getId_cliente()%>">
            
            Nome: <input class="form-control" type="text" name="txtNome" value="<%=c.getNome()%>" disabled=""><br>
            RG: <input class="form-control" type="text" name="txtRg" value="<%=c.getRg()%>" disabled=""><br>
            CPF: <input class="form-control" type="text" name="txtCpf" value="<%=c.getCpf()%>" disabled=""><br>
            Telefone: <input class="form-control" type="text" name="txtTelefone" value="<%=c.getTelefone()%>" disabled=""><br>
            E-mail: <input class="form-control" type="email" name="txtEmail" value="<%=c.getEmail()%>" disabled=""><br>
            
            <input class="btn btn-primary" type="submit" name="acao" value="Excluir">
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
            
        </form>
        </section>
        
    </body>
</html>

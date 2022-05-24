<%-- 
    Document   : AtualizarCliente
    Created on : 5 de nov. de 2021, 18:28:23
    Author     : bielm
--%>

<%@page import="modelDAO.ClienteDAO"%>
<%@page import="model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Cliente</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
       
        
            <%
                String idCliente = request.getParameter("idCliente");
                Cliente c = ClienteDAO.getRegistroById(Integer.parseInt(idCliente));
            %>
            
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerCliente" method="post">
                        <h2 class="text-center">Atualizar Cliente</h2>
                        <input type="hidden" name="idCliente" value="<%=c.getId_cliente()%>">

                        Novo Nome: <input  class="form-control" type="text" name="txtNome" value="<%=c.getNome()%>">
                        Novo RG: <input class="form-control" type="number" name="txtRg" value="<%=c.getRg()%>">
                        Novo CPF: <input class="form-control" type="number" name="txtCpf" value="<%=c.getCpf()%>">
                        Novo Telefone: <input class="form-control" type="number" name="txtTelefone" value="<%=c.getTelefone()%>">
                        Novo Email: <input class="form-control" type="email" name="txtEmail" value="<%=c.getEmail()%>"><br>

                         <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>

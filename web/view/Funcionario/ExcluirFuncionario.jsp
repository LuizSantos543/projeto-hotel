<%-- 
    Document   : ExcluirFuncionario
    Created on : 6 de nov. de 2021, 12:52:43
    Author     : bielm
--%>

<%@page import="modelDAO.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Funcionário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        
        
        <%
            String idFuncionario = request.getParameter("idFuncionario");
            Funcionario f = FuncionarioDAO.getRegistroById(Integer.parseInt(idFuncionario));
        %>
        <section class="contact-clean">
        <form action="/Final_Project/ControllerFuncionario" method="post">
            <h2 class="text-center">Tem certeza de que quer excluir esses dados?</h2>
            <input class="form-control" type="hidden" name="idFuncionario" value="<%=f.getId_funcionario()%>">
            
            Nome: <input class="form-control" type="text" name="txtNome" value="<%=f.getNome()%>" disabled="">  
            Endereço: <input class="form-control" type="text" name="txtEndereco" value="<%=f.getEndereco()%>" disabled="">
            RG: <input class="form-control" type="text" name="txtRg" value="<%=f.getRg()%>" disabled="">
            CPF: <input class="form-control" type="text" name="txtCpf" value="<%=f.getCpf()%>" disabled="">
            Telefone: <input class="form-control" type="text" name="txtTelefone" value="<%=f.getTelefone()%>" disabled="">
            E-mail: <input class="form-control" type="email" name="txtEmail" value="<%=f.getEmail()%>" disabled="">
            Cidade: <input class="form-control" type="text" name="txtCidade" value="<%=f.getCidade()%>" disabled="">
            Função: <input class="form-control" type="text" name="txtFuncao" value="<%=f.getFuncao()%>" disabled="">
            
            <input class="btn btn-primary" type="submit" name="acao" value="Excluir">
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
            
        </form>
        </section>
    </body>
</html>

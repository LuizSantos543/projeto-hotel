<%@page import="modelDAO.FuncionarioDAO"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Funcionário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idFuncionario = request.getParameter("idFuncionario");
                Funcionario f = FuncionarioDAO.getRegistroById(Integer.parseInt(idFuncionario));
            %>
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerFuncionario" method="post">
                        <h2 class="text-center">Atualiza Funcionário</h2>
                        <input type="hidden" name="idFuncionario" value="<%=f.getId_funcionario()%>">

                        Novo Nome: <input  class="form-control" type="text" name="txtNome" value="<%=f.getNome()%>">
                        Novo Endereco: <input  class="form-control" type="text" name="txtEndereco" value="<%=f.getEndereco()%>">
                        Novo RG: <input class="form-control" type="number" name="txtRg" value="<%=f.getRg()%>">
                        Novo CPF: <input class="form-control" type="number" name="txtCpf" value="<%=f.getCpf()%>">
                        Novo Telefone: <input class="form-control" type="number" name="txtTelefone" value="<%=f.getTelefone()%>">
                        Novo Email: <input class="form-control" type="email" name="txtEmail" value="<%=f.getEmail()%>">
                        Nova Cidade: <input class="form-control" type="text" name="txtCidade" value="<%=f.getCidade()%>">
                        Nova Função: <input class="form-control" type="text" name="txtFuncao" value="<%=f.getFuncao()%>">

                        <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>


<%@page import="java.util.ArrayList"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Funcionário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        <%
            ArrayList<Funcionario> listarFuncionario = (ArrayList<Funcionario>) request.getAttribute("listarFuncionario");
        %>
            <h2 class="text-center">Lista Funcionário</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Endereço</th>
                        <th>RG</th>
                        <th>CPF</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
                        <th>Cidade</th>
                        <th>Função</th>
                        <th>Atualizar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Funcionario f : listarFuncionario) {
                    %>
                    <tr>
                        <td><%=f.getId_funcionario()%></td>
                        <td><%=f.getNome()%></td>
                        <td><%=f.getEndereco()%></td>
                        <td><%=f.getRg()%></td>
                        <td><%=f.getCpf()%></td>
                        <td><%=f.getTelefone()%></td>
                        <td><%=f.getEmail()%></td>
                        <td><%=f.getCidade()%></td>
                        <td><%=f.getFuncao()%></td>
                        <td> <a href="view/Funcionario/AtualizarFuncionario.jsp?idFuncionario=<%=f.getId_funcionario()%>"> Atualizar </a> </td>
                        <td> <a href="view/Funcionario/ExcluirFuncionario.jsp?idFuncionario=<%=f.getId_funcionario()%>"> Excluir </a> </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

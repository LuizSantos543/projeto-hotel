
<%@page import="java.util.ArrayList"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Usuario</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        <%
            ArrayList<Usuario> listarUsuario = (ArrayList<Usuario>) request.getAttribute("listarUsuario");
        %>
            <h2 class="text-center">Lista Usuário</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Login</th>
                        <th>Atualizar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Usuario u : listarUsuario) {
                    %>
                    <tr>
                        <td><%=u.getId_usuario()%></td>
                        <td><%=u.getLogin()%></td>
                        <td> <a href="view/Usuario/AtualizarUsuario.jsp?idUsuario=<%=u.getId_usuario()%>"> Atualizar </a> </td>
                        <td> <a href="view/Usuario/ExcluirUsuario.jsp?idUsuario=<%=u.getId_usuario()%>"> Excluir </a> </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

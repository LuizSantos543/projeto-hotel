<%@page import="modelDAO.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualiza Usuário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
            <%
                String idUsuario = request.getParameter("idUsuario");
                Usuario u = UsuarioDAO.getRegistroById(Integer.parseInt(idUsuario));
            %>
            <section class="contact-clean">
                <div  id="formulario">
                    <form action="/Final_Project/ControllerUsuario" method="post">
                        <h2 class="text-center">Atualiza Usuário</h2>
                        <input type="hidden" name="idUsuario" value="<%=u.getId_usuario()%>">

                        Novo Login: <input  class="form-control" type="text" name="txtLogin" value="<%=u.getLogin()%>">
                        Nova Senha: <input  class="form-control" type="text" name="txtSenha" value="<%=u.getSenha()%>">

                        <input class="btn btn-primary" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    </form>
                </div>
            </section>
    </body>
</html>

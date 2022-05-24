<%@page import="modelDAO.UsuarioDAO"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Usuario</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
         <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        
        
        <%
            String idUsuario = request.getParameter("idUsuario");
            Usuario u = UsuarioDAO.getRegistroById(Integer.parseInt(idUsuario));
        %>
        <section class="contact-clean">
        <form action="/Final_Project/ControllerUsuario" method="post">
            <h2 class="text-center">Tem certeza de que quer excluir esses dados?</h2>
            <input class="form-control" type="hidden" name="idUsuario" value="<%=u.getId_usuario()%>">
            
            Login: <input class="form-control" type="text" name="txtLogin" value="<%=u.getLogin()%>" disabled="">  
            
            <input class="btn btn-primary" type="submit" name="acao" value="Excluir">
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
            
        </form>
        </section>
    </body>
</html>

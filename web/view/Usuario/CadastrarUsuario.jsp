<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>

        <section class="contact-clean">
            <div  id="formulario">
            <form action="/Final_Project/ControllerUsuario" method="post">
                <h2 class="text-center">Cadastro de Usuários</h2>
                Login: <input class="form-control" type="text" name="txtLogin">
                Senha: <input class="form-control" type="text" name="txtSenha"><br>
                

                <input class="btn btn-primary" type="submit" name="acao" value="Cadastrar">
                <input class="btn btn-primary" type="submit" name="acao" value="Listar">
                <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Atualizar">
                <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Excluir">
            </form>
            </div>
        </section>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    </body>
</html>

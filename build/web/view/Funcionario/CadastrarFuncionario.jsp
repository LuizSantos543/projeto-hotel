<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Funcionário</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>

        <section class="contact-clean">
            <div  id="formulario">
            <form action="/Final_Project/ControllerFuncionario" method="post">
                <h2 class="text-center">Cadastro de Funcionários</h2>
                Nome: <input class="form-control" type="text" name="txtNome">
                Endereco: <input class="form-control" type="text" name="txtEndereco">
                RG: <input class="form-control" type="number" name="txtRg">
                CPF: <input class="form-control" type="number" name="txtCpf">
                Telefone: <input class="form-control" type="number" name="txtTelefone">
                E-mail: <input class="form-control" type="email" name="txtEmail">
                Cidade: <input class="form-control" type="text" name="txtCidade">
                Função: <input class="form-control" type="text" name="txtFuncao"><br>

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

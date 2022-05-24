<%-- 
    Document   : CadastrarCliente
    Created on : 04/11/2021, 14:49:24
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Cliente</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>

        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerCliente" method="post">
                    <h2 class="text-center">Cadastro Cliente</h2>
                    Nome: <input class="form-control" type="text" name="txtNome">
                    RG: <input class="form-control" type="number" name="txtRg">
                    CPF: <input class="form-control" type="number" name="txtCpf">
                    Telefone: <input class="form-control" type="number" name="txtTelefone">
                    E-mail: <input class="form-control" type="email" name="txtEmail"><br>

                    <input class="btn btn-primary"type="submit" name="acao" value="Cadastrar">
                    <input class="btn btn-primary" type="submit" name="acao" value="Listar">
                    <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                    <input type="hidden" type="submit" name="acao" value="Check-in">
                    <input type="hidden" type="submit" name="acao" value="Check-out">
                    <input type="hidden" type="submit" name="acao" value="Atualizar">
                    <input type="hidden" type="submit" name="acao" value="Excluir">
                </form>
            </div>
        </section>
    </body>
</html>

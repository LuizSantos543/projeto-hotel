<%-- 
    Document   : CadastrarProduto
    Created on : 4 de nov. de 2021, 16:44:29
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Produto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerProduto" method="post">
                    <h2 class="text-center">Cadastro Produto</h2>
                        Quantidade: <input class="form-control" type="number" name="txtQuantidade">
                        Descrição: <input class="form-control" type="text" name="txtDescricao">
                        Preço: <input class="form-control" type="number" name="txtPreco"><br>

                        <input class="btn btn-primary" type="submit" name="acao" value="Cadastrar">
                        <input class="btn btn-primary" type="submit" name="acao" value="Listar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                        <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Excluir">
                </form>
             </div>
         </section>
    </body>
</html>

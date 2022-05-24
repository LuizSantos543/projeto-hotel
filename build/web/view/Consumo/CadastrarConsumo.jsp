<%-- 
    Document   : CadastrarConsumo
    Created on : 4 de nov. de 2021, 16:42:23
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Consumo</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
       
        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerConsumo" method="post">
                    <h2 class="text-center">Cadastro Consumo</h1>
                        Produto: <input class="form-control" type="text" name="txtProduto"><br>
                        Data Realizada: <input class="form-control" type="date" name="txtDataRealizada"><br>
                        Valor: <input class="form-control" type="number" name="txtValor"><br>

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

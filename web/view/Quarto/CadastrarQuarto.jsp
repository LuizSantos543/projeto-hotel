<%-- 
    Document   : CadastrarQuarto
    Created on : 4 de nov. de 2021, 16:46:02
    Author     : bielm
--%>

<%@page import="java.util.List"%>
<%@page import="model.Quarto"%>
<%@page import="modelDAO.QuartoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Quarto</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>

        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerQuarto" method="post">
                    <h2 class="text-center">Cadastro Quarto</h1>
                        Número: <input class="form-control" type="number" name="txtNumero">
                        Valor: <input class="form-control" type="number" name="txtValor">
                        Tipo: <input class="form-check-input" type="radio" id="simples" name="txtTipo" value="Simples">
                        <label class="form-check-label" for="html">Simples</label>
                        <input class="form-check-input" type="radio" id="luxo" name="txtTipo" value="Luxo">
                        <label class="form-check-label" for="css">Luxo</label><br><br>


                        <input class="btn btn-primary" type="submit" name="acao" value="Finalizar">
                        <input class="btn btn-primary" type="submit" name="acao" value="Listar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                        <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Atualizar">
                        <input class="btn btn-primary" type="hidden" type="submit" name="acao" value="Excluir">
                </form>
             </div>
         </section>
    </body>
</html>

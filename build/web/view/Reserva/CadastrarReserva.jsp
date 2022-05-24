<%-- 
    Document   : CadastrarReserva
    Created on : 4 de nov. de 2021, 16:47:31
    Author     : bielm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check-in</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerReserva" method="post">
                    <h2 class="text-center">Check-in</h1>
                        Data de Entrada: <input class="form-control" type="date" name="txtDataEntrada"><br>
                        Data de Saída: <input class="form-control" type="date" name="txtDataSaida"><br>

                        <input class="btn btn-primary" type="submit" name="acao" value="Next">
                        <input class="btn btn-primary" type="submit" name="acao" value="Listar">
                        <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
                        <input type="hidden" type="submit" name="acao" value="Atualizar">
                        <input type="hidden" type="submit" name="acao" value="Excluir">
                </form>
             </div>
        </section>
    </body>
</html>

<%@page import="model.Quarto"%>
<%@page import="modelDAO.QuartoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecionar Quarto</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
     
        
        <%
            ArrayList<Quarto> listarQuarto = (ArrayList<Quarto>) request.getAttribute("listarQuarto");
        %>
        <h2 class="text-center">Selecione o Quarto</h2>
            <table method="post" class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Número</th>
                    <th>Valor</th>
                    <th>Tipo</th>
                    <th>Selecionar</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Quarto q : listarQuarto){
                %>
                <tr>
                    <td><%=q.getId_quarto()%></td>
                    <td><%=q.getNumero()%></td>
                    <td><%=q.getValor()%></td>
                    <td><%=q.getTipo()%></td>
                    <td> <a href="view/Quarto/AtualizarQuarto.jsp?idQuarto=<%=q.getId_quarto()%>"> Selecionar </a> </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
            <input class="btn btn-primary" type='button' value='Voltar' onclick='history.go(-1)' />
    </body>
</html>

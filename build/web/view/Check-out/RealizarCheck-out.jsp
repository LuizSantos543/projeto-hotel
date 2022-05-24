<%-- 
    Document   : RealizarCheck-out
    Created on : 20 de nov. de 2021, 12:46:37
    Author     : bielm
--%>

<%@page import="model.Quarto"%>
<%@page import="modelDAO.QuartoDAO"%>
<%@page import="model.Consumo"%>
<%@page import="modelDAO.ConsumoDAO"%>
<%@page import="model.Produto"%>
<%@page import="modelDAO.ProdutoDAO"%>
<%@page import="model.Reserva"%>
<%@page import="modelDAO.ReservaDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Cliente"%>
<%@page import="modelDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check-out</title>
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/form-style.css">
    </head>
    <body>
        
        
        <%
            Integer idCliente = Integer.parseInt(request.getParameter("idCliente"));

            ClienteDAO clientedao = new ClienteDAO();
            List<Cliente> listcliente = clientedao.listar();
            
            ReservaDAO reservadao = new ReservaDAO();
            List<Reserva> listreserva = reservadao.listar();
            
            ConsumoDAO consumodao = new ConsumoDAO();
            List<Consumo> listconsumo = consumodao.listar();
            
            ProdutoDAO produtodao = new ProdutoDAO();
            List<Produto> listproduto = produtodao.listar();
            
            QuartoDAO quartodao = new QuartoDAO();
            List<Quarto> listquarto = quartodao.listar();
            
        %>
        
        <%
            for(Cliente c : listcliente){
                if(idCliente.equals(c.getId_cliente())){
                    for(Reserva r : listreserva){
                        if(idCliente.equals(r.getId_reserva())){
                            for(Consumo con : listconsumo){
                                if(idCliente.equals(con.getId_consumo())){
                                    for(Produto p : listproduto){
                                        if(idCliente.equals(p.getId_produto())){
                                            for(Quarto q : listquarto){
                                                if(idCliente.equals(q.getId_quarto())){
                                                    
            double total;
            double tipoQuarto = 0;
                    
            double precoProduto = Double.parseDouble(p.getPreco());
            Integer quantidadeProduto = p.getQuantidade();
            double valorQuarto = Double.parseDouble(q.getValor());
            
            double valorConsumo = precoProduto * quantidadeProduto;
            
            total = valorQuarto + valorConsumo + tipoQuarto;
        %>
        
        <section class="contact-clean">
            <div  id="formulario">
                <form action="/Final_Project/ControllerCheckout" method="post">
                    <h2 class="text center">Realizar Check-out</h2>
                    Cliente: <input class="form-control" type="text" value="<%=c.getNome()%>" disabled="">
                    Entrada: <input class="form-control" type="text" value="<%=r.getData_entrada()%>" disabled="">
                    Saída: <input class="form-control" type="text" value="<%=r.getData_saida()%>" disabled="">
                    Quarto: <input class="form-control" type="text" value="<%=q.getNumero()%>" disabled="">
                    Produto: <input class="form-control" type="text" value="<%=con.getProduto()%>" disabled="">
                    Quantidade: <input class="form-control" type="text" value="<%=p.getQuantidade()%>" disabled="">
                    Valor Total: <input class="form-control" type="text" value="<%=total%>" disabled="">
                    Valor Pago: <input class="form-control" type="number" name="valorPago"><br><br>

                    <input class="btn btn-primary" type="submit" name="acao" value="Pagamento a vista"><br><br>
                </form>
            </div>
        </section>
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
        
        <%
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        %>
        
    </body>
</html>

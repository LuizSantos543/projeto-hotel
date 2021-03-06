/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;
import modelDAO.ProdutoDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerProduto", urlPatterns = {"/ControllerProduto"})
public class ControllerProduto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            
            String acao = request.getParameter("acao");
            
            if(acao.equals("Cadastrar")){
                
                String quantidade = request.getParameter("txtQuantidade");
                String descricao = request.getParameter("txtDescricao");
                String preco = request.getParameter("txtPreco");
                
                Produto produto = new Produto();
                produto.setQuantidade(Integer.parseInt(quantidade));
                produto.setDescricao(descricao);
                produto.setPreco(preco);
                
                ProdutoDAO pdao = new ProdutoDAO();
                pdao.cadastrar(produto);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Listar")){
                
                ProdutoDAO pdao = new ProdutoDAO();
                
                ArrayList<Produto> produtos = pdao.listar();
                
                request.setAttribute("listarProduto", produtos);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Produto/ListarProduto.jsp");
                rd.forward(request, response);
                
            }else if(acao.equals("Atualizar")){               
                
                String quantidade = request.getParameter("txtQuantidade");
                String descricao = request.getParameter("txtDescricao");
                String preco = request.getParameter("txtPreco");
                String idProduto = request.getParameter("idProduto");
                
                Produto novoProduto = new Produto();
                novoProduto.setQuantidade(Integer.parseInt(quantidade));
                novoProduto.setDescricao(descricao);
                novoProduto.setPreco(preco);
                novoProduto.setId_produto(Integer.parseInt(idProduto));
                
                ProdutoDAO pdao = new ProdutoDAO();
                pdao.atualizar(novoProduto);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idProduto = request.getParameter("idProduto");
                
                Produto excluirProduto = new Produto();
                excluirProduto.setId_produto(Integer.parseInt(idProduto));
                
                ProdutoDAO pdao = new ProdutoDAO();
                pdao.excluir(excluirProduto);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }
            
        } catch (Exception e) {
            request.setAttribute("erro", e);
            RequestDispatcher rd = request.getRequestDispatcher("/view/Status/Erro.jsp");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

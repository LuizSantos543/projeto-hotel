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
import model.Quarto;
import modelDAO.QuartoDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerQuarto", urlPatterns = {"/ControllerQuarto"})
public class ControllerQuarto extends HttpServlet {

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
            
            if(acao.equals("Finalizar")){
                
                String numero = request.getParameter("txtNumero");
                String valor = request.getParameter("txtValor");
                String tipo = request.getParameter("txtTipo");
                
                Quarto quarto = new Quarto();
                quarto.setNumero(Integer.parseInt(numero));
                quarto.setValor(valor);
                quarto.setTipo(tipo);
                
                QuartoDAO qdao = new QuartoDAO();
                qdao.cadastrar(quarto);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Listar")){
                
                QuartoDAO qdao = new QuartoDAO();
                
                ArrayList<Quarto> quartos = qdao.listar();
                
                request.setAttribute("listarQuarto", quartos);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Quarto/ListarQuarto.jsp");
                rd.forward(request, response);
                
            }else if(acao.equals("Atualizar")){               
                
                String numero = request.getParameter("txtNumero");
                String valor = request.getParameter("txtValor");
                String tipo = request.getParameter("txtTipo");
                String idQuarto = request.getParameter("idQuarto");
                
                Quarto novoQuarto = new Quarto();
                novoQuarto.setNumero(Integer.parseInt(numero));
                novoQuarto.setValor(valor);
                novoQuarto.setTipo(tipo);
                novoQuarto.setId_quarto(Integer.parseInt(idQuarto));
                
                QuartoDAO qdao = new QuartoDAO();
                qdao.atualizar(novoQuarto);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idQuarto = request.getParameter("idQuarto");
                
                Quarto excluirQuarto = new Quarto();
                excluirQuarto.setId_quarto(Integer.parseInt(idQuarto));
                
                QuartoDAO qdao = new QuartoDAO();
                qdao.excluir(excluirQuarto);
                
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

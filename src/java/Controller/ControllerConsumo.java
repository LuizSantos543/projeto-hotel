/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Consumo;
import modelDAO.ConsumoDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerConsumo", urlPatterns = {"/ControllerConsumo"})
public class ControllerConsumo extends HttpServlet {

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
                
                String produto = request.getParameter("txtProduto");
                String data_realizada = request.getParameter("txtDataRealizada");
                String valor = request.getParameter("txtValor");
                
                Consumo consumo = new Consumo();
                consumo.setProduto(produto);
                consumo.setData_realizada(data_realizada);
                consumo.setValor(valor);
                
                ConsumoDAO cdao = new ConsumoDAO();
                cdao.cadastrar(consumo);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Listar")){
                
                ConsumoDAO cdao = new ConsumoDAO();
                
                ArrayList<Consumo> consumos = cdao.listar();
                
                request.setAttribute("listarConsumo", consumos);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Consumo/ListarConsumo.jsp");
                rd.forward(request, response);
                
            }else if(acao.equals("Atualizar")){               
                
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                
                String produto = request.getParameter("txtProduto");
                String data_realizada = request.getParameter("txtData_realizada");
                String valor = request.getParameter("txtValor");
                String idConsumo = request.getParameter("idConsumo");
                
                Consumo novoConsumo = new Consumo();
                novoConsumo.setProduto(produto);
                novoConsumo.setData_realizada(data_realizada);
                novoConsumo.setValor(valor);
                novoConsumo.setId_consumo(Integer.parseInt(idConsumo));

                ConsumoDAO cdao = new ConsumoDAO();
                cdao.atualizar(novoConsumo);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idConsumo = request.getParameter("idConsumo");
                
                Consumo excluirConsumo = new Consumo();
                excluirConsumo.setId_consumo(Integer.parseInt(idConsumo));
                
                ConsumoDAO cdao = new ConsumoDAO();
                cdao.excluir(excluirConsumo);
                
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

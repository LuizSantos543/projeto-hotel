/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Reserva;
import modelDAO.ReservaDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerReserva", urlPatterns = {"/ControllerReserva"})
public class ControllerReserva extends HttpServlet {

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
            
            if(acao.equals("Next")){
                
                String data_entrada = request.getParameter("txtDataEntrada");
                String data_saida = request.getParameter("txtDataSaida");
                
                Reserva reserva = new Reserva();
                
                reserva.setData_entrada(data_entrada);
                reserva.setData_saida(data_saida);
                
                ReservaDAO rdao = new ReservaDAO();
                rdao.cadastrar(reserva);
                
                response.sendRedirect("view/Quarto/CadastrarQuarto.jsp");
                
            }else if(acao.equals("Listar")){
                
                ReservaDAO rdao = new ReservaDAO();
                
                ArrayList<Reserva> reservas = rdao.listar();
                
                request.setAttribute("listarReserva", reservas);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Reserva/ListarReserva.jsp");
                rd.forward(request, response);
                
            }else if(acao.equals("Atualizar")){               
                
                String data_entrada = request.getParameter("txtData_entrada");
                String data_saida = request.getParameter("txtData_saida");
                String idReserva = request.getParameter("idReserva");
                
                Reserva novaReserva = new Reserva();
                novaReserva.setData_entrada(data_entrada);
                novaReserva.setData_saida(data_saida);
                novaReserva.setId_reserva(Integer.parseInt(idReserva));
                
                ReservaDAO rdao = new ReservaDAO();
                rdao.atualizar(novaReserva);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idReserva = request.getParameter("idReserva");
                
                Reserva excluirReserva = new Reserva();
                excluirReserva.setId_reserva(Integer.parseInt(idReserva));
                
                ReservaDAO rdao = new ReservaDAO();
                rdao.excluir(excluirReserva);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
            
            }else if(acao.equals("Next")){
                
                ReservaDAO rdao = new ReservaDAO();

                ArrayList<Reserva> reservas = rdao.listar();
                
                request.setAttribute("listarReserva", reservas);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Check-in/RealizarCheck-in.jsp");
                rd.forward(request, response);
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

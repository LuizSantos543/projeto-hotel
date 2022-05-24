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
import model.Cliente;
import model.Consumo;
import modelDAO.ClienteDAO;
import modelDAO.ConsumoDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerCliente", urlPatterns = {"/ControllerCliente"})
public class ControllerCliente extends HttpServlet {

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
                
                String nome = request.getParameter("txtNome");
                String rg = request.getParameter("txtRg");
                String cpf = request.getParameter("txtCpf");
                String telefone = request.getParameter("txtTelefone");
                String email = request.getParameter("txtEmail");
                
                Cliente cliente = new Cliente();
                cliente.setNome(nome);
                cliente.setRg(rg);
                cliente.setCpf(cpf);
                cliente.setTelefone(telefone);
                cliente.setEmail(email);
                
                ClienteDAO cdao = new ClienteDAO();
                cdao.cadastrar(cliente);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Listar")){
                
                ClienteDAO cdao = new ClienteDAO();

                ArrayList<Cliente> clientes = cdao.listar();
                
                request.setAttribute("listarCliente", clientes);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Cliente/ListarCliente.jsp");
                rd.forward(request, response);
            
            }else if(acao.equals("Atualizar")){               
                
                String nome = request.getParameter("txtNome");
                String rg = request.getParameter("txtRg");
                String cpf = request.getParameter("txtCpf");
                String telefone = request.getParameter("txtTelefone");
                String email = request.getParameter("txtEmail");
                String idCliente = request.getParameter("idCliente");
                
                Cliente novoCliente = new Cliente();
                novoCliente.setNome(nome);
                novoCliente.setRg(rg);
                novoCliente.setCpf(cpf);
                novoCliente.setTelefone(telefone);
                novoCliente.setEmail(email);
                novoCliente.setId_cliente(Integer.parseInt(idCliente));
                
                ClienteDAO cdao = new ClienteDAO();
                cdao.atualizar(novoCliente);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idCliente = request.getParameter("idCliente");
                
                Cliente excluirCliente = new Cliente();
                excluirCliente.setId_cliente(Integer.parseInt(idCliente));
                
                ClienteDAO cdao = new ClienteDAO();
                cdao.excluir(excluirCliente);
                
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

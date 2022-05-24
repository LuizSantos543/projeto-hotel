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
import model.Usuario;
import modelDAO.UsuarioDAO;

/**
 *
 * @author bielm
 */
@WebServlet(name = "ControllerUsuario", urlPatterns = {"/ControllerUsuario"})
public class ControllerUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            
            String acao = request.getParameter("acao");
            
            if(acao.equals("Cadastrar")){
                
                String login = request.getParameter("txtLogin");
                String senha = request.getParameter("txtSenha");
                
                Usuario usuario = new Usuario();
                usuario.setLogin(login);
                usuario.setSenha(senha);
                
                UsuarioDAO udao = new UsuarioDAO();
                udao.cadastrar(usuario);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Listar")){
                
                UsuarioDAO udao = new UsuarioDAO();
                
                ArrayList<Usuario> usuarios = udao.listar();
                
                request.setAttribute("listarUsuario", usuarios);
                
                RequestDispatcher rd = request.getRequestDispatcher("view/Usuario/ListarUsuario.jsp");
                rd.forward(request, response);
                
            }else if(acao.equals("Atualizar")){               
                
                String login = request.getParameter("txtLogin");
                String senha = request.getParameter("txtSenha");
                String idUsuario = request.getParameter("idUsuario");
                
                Usuario novoUsuario = new Usuario();
                novoUsuario.setLogin(login);
                novoUsuario.setSenha(senha);
                novoUsuario.setId_usuario(Integer.parseInt(idUsuario));
                
                UsuarioDAO udao = new UsuarioDAO();
                udao.atualizar(novoUsuario);
                
                response.sendRedirect("view/Status/Sucesso.jsp");
                
            }else if(acao.equals("Excluir")){
                
                String idUsuario = request.getParameter("idUsuario");
                
                Usuario excluirUsuario = new Usuario();
                excluirUsuario.setId_usuario(Integer.parseInt(idUsuario));
                
                UsuarioDAO udao = new UsuarioDAO();
                udao.excluir(excluirUsuario);
                
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

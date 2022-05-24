package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelDAO.UsuarioDAO;
import model.Usuario;

/**
 *
 * @author FELIPE
 */
@WebServlet(name = "ControllerLogin", urlPatterns = {"/ControllerLogin"})
public class ControllerLogin extends HttpServlet {
    
    UsuarioDAO udao = new UsuarioDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("txtUsuario");
        String senha = request.getParameter("txtSenha");
        Usuario usuario = new Usuario();
        usuario.setLogin(login);
        usuario.setSenha(senha);

        try {
            if (udao.validar(usuario)) {
                HttpSession session = request.getSession();
                session.setAttribute("user",login);
                response.sendRedirect("view/home.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user", login);
                response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }
    }
}


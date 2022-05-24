package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Usuario;
import util.DB;


public class UsuarioDAO {
  
   
    
    private static final String insert = "INSERT INTO usuario (login, senha) VALUES (?,?)";
    private static final String select_all = "SELECT * FROM usuario";
    private static final String update = "UPDATE usuario SET login = ?, senha = ? WHERE id_usuario = ?";
    private static final String delete = "DELETE FROM usuario WHERE id_usuario = ?";
    
    public void cadastrar(Usuario usuario){
        Connection conexao = null;
       
        try {
            conexao = DB.getConexao();
        
            PreparedStatement pstmt = conexao.prepareStatement(insert);
            
            pstmt.setString(1, usuario.getLogin());
            pstmt.setString(2, usuario.getSenha());
            
        } catch (Exception e) {
            throw new RuntimeException(e);
        }finally{
            try{
                conexao.close();
            }catch (SQLException ex){
                throw new RuntimeException (ex);
            }
        }
    }
    
    public static Usuario getRegistroById(int idUsuario) throws SQLException{
        
        Usuario usuario = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM usuario WHERE id_usuario = ?");
            ps.setInt(1, idUsuario);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setLogin(rs.getString("login"));
                usuario.setSenha(rs.getString("senha"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return usuario;
    }
    
    
    
    
    
    public ArrayList<Usuario> listar() throws SQLException{
        
        ArrayList<Usuario> listarUsuario = new ArrayList<Usuario>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Usuario novoUsuario = new Usuario();
                novoUsuario.setId_usuario(rs.getInt("id_usuario"));
                novoUsuario.setLogin(rs.getString("login"));
                novoUsuario.setSenha(rs.getString("senha"));
            
            listarUsuario.add(novoUsuario);
        }
        
        return listarUsuario;
    }
    
    
    
    
    
    public void atualizar(Usuario novoUsuario) {

        try {

            Connection conexao = DB.getConexao();

            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);

            pstmt.setString(1, novoUsuario.getLogin());
            pstmt.setString(2, novoUsuario.getSenha());
            pstmt.setInt(3, novoUsuario.getId_usuario());
            pstmt.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void excluir(Usuario excluirUsuario) {

        try {

            Connection conexao = DB.getConexao();

            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);

            pstmt.setInt(1, excluirUsuario.getId_usuario());
            pstmt.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public boolean validar(Usuario usuario) throws ClassNotFoundException {
        boolean status = false;
        Connection conexao = DB.getConexao();

        try {
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement("SELECT * FROM usuario where login = ? and senha = ? ");

            pstmt.setString(1, usuario.getLogin());
            pstmt.setString(2, usuario.getSenha());

            System.out.println(pstmt);
            ResultSet rs = pstmt.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return status;
    }
}



	
	
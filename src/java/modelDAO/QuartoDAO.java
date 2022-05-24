/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Quarto;
import util.DB;

/**
 *
 * @author bielm
 */
public class QuartoDAO {
    
    private static final String insert = "INSERT INTO quarto (numero, valor, tipo) VALUES (?,?,?)";
    private static final String select_all = "SELECT * FROM quarto";
    private static final String update = "UPDATE quarto SET numero = ?, valor = ?, tipo = ? WHERE id_quarto = ?";
    private static final String delete = "DELETE FROM quarto WHERE id_quarto = ?";
    
    public void cadastrar(Quarto quarto){
        Connection conexao = null;
       
        try {
            conexao = DB.getConexao();
        
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(insert);
            
            pstmt.setInt(1, quarto.getNumero());
            pstmt.setString(2, quarto.getValor());
            pstmt.setString(3, quarto.getTipo());
            pstmt.execute();
            
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
    
    
    
    
    
    public static Quarto getRegistroById(int idQuarto) throws SQLException{
        
        Quarto quarto = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM quarto WHERE id_quarto = ?");
            ps.setInt(1, idQuarto);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                quarto = new Quarto();
                quarto.setId_quarto(rs.getInt("id_quarto"));
                quarto.setNumero(rs.getInt("numero"));
                quarto.setValor(rs.getString("valor"));
                quarto.setTipo(rs.getString("tipo"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return quarto;
    }
    
    
    
    
    
    public ArrayList<Quarto> listar() throws SQLException{
        
        ArrayList<Quarto> listarQuarto = new ArrayList<Quarto>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
           
            Quarto quarto = new Quarto();
            quarto.setId_quarto(rs.getInt("id_quarto"));
            quarto.setNumero(rs.getInt("numero"));
            quarto.setValor(rs.getString("valor"));
            quarto.setTipo(rs.getString("tipo"));
            
            listarQuarto.add(quarto);
        }
        
        return listarQuarto;
    }
    
    
    
    
    
    public void atualizar(Quarto novoQuarto){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setInt(1, novoQuarto.getNumero());
            pstmt.setString(2, novoQuarto.getValor());
            pstmt.setString(3, novoQuarto.getTipo());  
            pstmt.setInt(4, novoQuarto.getId_quarto());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Quarto excluirQuarto){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirQuarto.getId_quarto());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

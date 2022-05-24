/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Consumo;
import util.DB;

/**
 *
 * @author bielm
 */
public class ConsumoDAO {
    
    private static final String insert = "INSERT INTO consumo (produto, data_realizada, valor) VALUES (?,?,?)";
    private static final String select_all = "SELECT * FROM consumo";
    private static final String update = "UPDATE consumo SET produto = ?, data_realizada = ?, valor = ? WHERE id_consumo = ?";
    private static final String delete = "DELETE FROM consumo WHERE id_consumo = ?";
    
    public void cadastrar(Consumo consumo){
        
        Connection conexao = DB.getConexao();
       
        try {
            
            PreparedStatement pstmt = conexao.prepareStatement(insert);
            
            pstmt.setString(1, consumo.getProduto());
            pstmt.setString(2, consumo.getData_realizada());
            pstmt.setString(3, consumo.getValor());
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
    
    
    
    
    
    public ArrayList<Consumo> listar() throws SQLException{
        
        ArrayList<Consumo> listarConsumo = new ArrayList<Consumo>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Consumo novoConsumo = new Consumo();
            novoConsumo.setId_consumo(rs.getInt("id_consumo"));
            novoConsumo.setProduto(rs.getString("produto"));
            novoConsumo.setData_realizada(rs.getString("data_realizada"));
            novoConsumo.setValor(rs.getString("valor"));
            
            listarConsumo.add(novoConsumo);
        }
        
        return listarConsumo;
    }
    
    
    
    
    
    public static Consumo getRegistroById(int idConsumo) throws SQLException{
        
        Consumo consumo = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM consumo WHERE id_consumo = ?");
            ps.setInt(1, idConsumo);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                consumo = new Consumo();
                consumo.setId_consumo(rs.getInt("id_consumo"));
                consumo.setProduto(rs.getString("produto"));
                consumo.setData_realizada(rs.getString("data_realizada"));
                consumo.setValor(rs.getString("valor"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return consumo;
    }
    
    
    
    
    
    public void atualizar(Consumo novoConsumo){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setString(1, novoConsumo.getProduto());
            pstmt.setString(2, novoConsumo.getData_realizada());
            pstmt.setString(3, novoConsumo.getValor());
            pstmt.setInt(4, novoConsumo.getId_consumo());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Consumo excluirConsumo){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirConsumo.getId_consumo());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public ArrayList<Consumo> checkout() throws SQLException{
        
        ArrayList<Consumo> checkoutConsumo = new ArrayList<Consumo>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement("SELECT * FROM consumo WHERE id_consumo = id_cliente");
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Consumo consumo = new Consumo();
            consumo.setId_consumo(rs.getInt("id_consumo"));
            consumo.setProduto(rs.getString("produto"));
            consumo.setData_realizada(rs.getString("data_realizada"));
            consumo.setValor(rs.getString("valor"));
            
            checkoutConsumo.add(consumo);
        }
        
        return checkoutConsumo;
    }
}

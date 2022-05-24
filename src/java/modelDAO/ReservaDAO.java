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
import model.Reserva;
import util.DB;

/**
 *
 * @author bielm
 */
public class ReservaDAO {
    
    private static final String insert = "INSERT INTO reserva (data_entrada, data_saida) VALUES (?,?)";
    private static final String select_all = "SELECT * FROM reserva";
    private static final String update = "UPDATE reserva SET data_entrada = ?, data_saida = ? WHERE id_reserva = ?";
    private static final String delete = "DELETE FROM reserva WHERE id_reserva = ?";
    
    public void cadastrar(Reserva reserva){
        Connection conexao = null;
       
        try {
            conexao = DB.getConexao();
        
            PreparedStatement pstmt = conexao.prepareStatement(insert);
            
            pstmt.setString(1, reserva.getData_entrada());
            pstmt.setString(2, reserva.getData_saida());
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
    
    
    
    
    
    public static Reserva getRegistroById(int idReserva) throws SQLException{
        
        Reserva reserva = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM reserva WHERE id_reserva = ?");
            ps.setInt(1, idReserva);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                reserva = new Reserva();
                reserva.setId_reserva(rs.getInt("id_reserva"));
                reserva.setData_entrada(rs.getString("data_entrada"));
                reserva.setData_saida(rs.getString("data_saida"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return reserva;
    }
    
    
    
    
    
    public ArrayList<Reserva> listar() throws SQLException{
        
        ArrayList<Reserva> listarReserva = new ArrayList<Reserva>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Reserva reserva = new Reserva();
            reserva.setId_reserva(rs.getInt("id_reserva"));
            reserva.setData_entrada(rs.getString("data_entrada"));
            reserva.setData_saida(rs.getString("data_saida"));
            
            listarReserva.add(reserva);
        }
        
        return listarReserva;
    }
    
    
    
    
    
    public void atualizar(Reserva novaReserva){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setString(1, novaReserva.getData_entrada());
            pstmt.setString(2, novaReserva.getData_saida());
            pstmt.setInt(3, novaReserva.getId_reserva());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Reserva excluirReserva){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirReserva.getId_reserva());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

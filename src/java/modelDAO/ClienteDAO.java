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
import model.Cliente;
import util.DB;

/**
 *
 * @author bielm
 */
public class ClienteDAO {
    
    private static final String insert = "INSERT INTO cliente (nome, rg, cpf, telefone, email) VALUES (?,?,?,?,?)";
    private static final String select_all = "SELECT * FROM cliente";
    private static final String update = "UPDATE cliente SET nome = ?, rg = ?, cpf = ?, telefone = ?, email = ? WHERE id_cliente = ?";
    private static final String delete = "DELETE FROM cliente WHERE id_cliente = ?";
    
    public void cadastrar(Cliente cliente) {

        Connection conexao = DB.getConexao();

        try {

            PreparedStatement pstmt = conexao.prepareStatement(insert);

            pstmt.setString(1, cliente.getNome());
            pstmt.setString(2, cliente.getRg());
            pstmt.setString(3, cliente.getCpf());
            pstmt.setString(4, cliente.getTelefone());
            pstmt.setString(5, cliente.getEmail());
            pstmt.execute();

        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            try {
                conexao.close();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
        }
    }
    
    
    
    
    
    public static Cliente getRegistroById(int idCliente) throws SQLException{
        
        Cliente cliente = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM cliente WHERE id_cliente = ?");
            ps.setInt(1, idCliente);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                cliente = new Cliente();
                cliente.setId_cliente(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome"));
                cliente.setRg(rs.getString("rg"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setEmail(rs.getString("email"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return cliente;
    }
    
    
    
    
    
    public ArrayList<Cliente> listar() throws SQLException{
        
        ArrayList<Cliente> listarCliente = new ArrayList<Cliente>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Cliente cliente = new Cliente();
            cliente.setId_cliente(rs.getInt("id_cliente"));
            cliente.setNome(rs.getString("nome"));
            cliente.setRg(rs.getString("rg"));
            cliente.setCpf(rs.getString("cpf"));
            cliente.setTelefone(rs.getString("telefone"));
            cliente.setEmail(rs.getString("email"));
            
            listarCliente.add(cliente);
        }
        
        return listarCliente;
    }
    
    
    
    
    
    public void atualizar(Cliente novoCliente){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setString(1, novoCliente.getNome());
            pstmt.setString(2, novoCliente.getRg());
            pstmt.setString(3, novoCliente.getCpf());
            pstmt.setString(4, novoCliente.getTelefone());
            pstmt.setString(5, novoCliente.getEmail());
            pstmt.setInt(6, novoCliente.getId_cliente());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Cliente excluirCliente){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirCliente.getId_cliente());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

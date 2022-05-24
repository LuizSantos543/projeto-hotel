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
import model.Produto;
import util.DB;

/**
 *
 * @author bielm
 */
public class ProdutoDAO {
    
    private static final String insert = "INSERT INTO produto (quantidade, descricao, preco) VALUES (?,?,?)";
    private static final String select_all = "SELECT * FROM produto";
    private static final String update = "UPDATE produto SET quantidade = ?, descricao = ?, preco = ? WHERE id_produto = ?";
    private static final String delete = "DELETE FROM produto WHERE id_produto = ?";
    
    public void cadastrar(Produto produto){
        Connection conexao = null;
       
        try {
            conexao = DB.getConexao();
        
            PreparedStatement pstmt = conexao.prepareStatement(insert);
            
            pstmt.setInt(1, produto.getQuantidade());
            pstmt.setString(2, produto.getDescricao());
            pstmt.setString(3, produto.getPreco());
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
    
    
    
    
    public static Produto getRegistroById(int idProduto) throws SQLException{
        
        Produto produto = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM produto WHERE id_produto = ?");
            ps.setInt(1, idProduto);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                produto = new Produto();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getString("preco"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return produto;
    }
    
    
    
    
    
    public ArrayList<Produto> listar() throws SQLException{
        
        ArrayList<Produto> listarProduto = new ArrayList<Produto>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Produto novoProduto = new Produto();
            novoProduto.setId_produto(rs.getInt("id_produto"));
            novoProduto.setQuantidade(rs.getInt("quantidade"));
            novoProduto.setDescricao(rs.getString("descricao"));
            novoProduto.setPreco(rs.getString("preco"));
            
            listarProduto.add(novoProduto);
        }
        
        return listarProduto;
    }
    
    
    
    
    
    public void atualizar(Produto novoProduto){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setInt(1, novoProduto.getQuantidade());
            pstmt.setString(2, novoProduto.getDescricao());
            pstmt.setString(3, novoProduto.getPreco());
            pstmt.setInt(4, novoProduto.getId_produto());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Produto excluirProduto){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirProduto.getId_produto());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

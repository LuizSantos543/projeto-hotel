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
import model.Funcionario;
import util.DB;

/**
 *
 * @author bielm
 */
public class FuncionarioDAO {
    
    private static final String insert = "INSERT INTO funcionario (nome, endereco, rg, cpf, telefone, email, cidade, funcao) VALUES (?,?,?,?,?,?,?,?)";
    private static final String select_all = "SELECT * FROM funcionario";
    private static final String update = "UPDATE funcionario SET nome = ?, endereco = ?, rg = ?, cpf = ?, telefone = ?, email = ?, cidade = ?, funcao = ? WHERE id_funcionario = ?";
    private static final String delete = "DELETE FROM funcionario WHERE id_funcionario = ?";
    
    public void cadastrar(Funcionario funcionario){
        
        Connection conexao = DB.getConexao();
       
        try {
        
            PreparedStatement pstmt = conexao.prepareStatement(insert);
            
            pstmt.setString(1, funcionario.getNome());
            pstmt.setString(2, funcionario.getEndereco());
            pstmt.setString(3, funcionario.getRg());
            pstmt.setString(4, funcionario.getCpf());
            pstmt.setString(5, funcionario.getTelefone());
            pstmt.setString(6, funcionario.getEmail());
            pstmt.setString(7, funcionario.getCidade());
            pstmt.setString(8, funcionario.getFuncao());
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
    
    
    
    
    
    public static Funcionario getRegistroById(int idFuncionario) throws SQLException{
        
        Funcionario funcionario = null;
        
        try{
            Connection conexao = DB.getConexao();
            
            PreparedStatement ps = conexao.prepareStatement("SELECT * FROM funcionario WHERE id_funcionario = ?");
            ps.setInt(1, idFuncionario);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                
                funcionario = new Funcionario();
                funcionario.setId_funcionario(rs.getInt("id_funcionario"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEndereco(rs.getString("endereco"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setTelefone(rs.getString("telefone"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setCidade(rs.getString("cidade"));
                funcionario.setFuncao(rs.getString("funcao"));
            }   
        }catch (Exception e){
            System.out.println(e);
        }
        
        return funcionario;
    }
    
    
    
    
    
    public ArrayList<Funcionario> listar() throws SQLException{
        
        ArrayList<Funcionario> listarFuncionario = new ArrayList<Funcionario>();
        
        Connection conexao = DB.getConexao();
        
        PreparedStatement pstmt = conexao.prepareStatement(select_all);
        
        ResultSet rs = pstmt.executeQuery();
        
        while(rs.next()){
            
            Funcionario novoFuncionario = new Funcionario();
            novoFuncionario.setId_funcionario(rs.getInt("id_funcionario"));
            novoFuncionario.setNome(rs.getString("nome"));
            novoFuncionario.setEndereco(rs.getString("endereco"));
            novoFuncionario.setRg(rs.getString("rg"));
            novoFuncionario.setCpf(rs.getString("cpf"));
            novoFuncionario.setTelefone(rs.getString("telefone"));
            novoFuncionario.setEmail(rs.getString("email"));
            novoFuncionario.setCidade(rs.getString("cidade"));
            novoFuncionario.setFuncao(rs.getString("funcao"));
            
            listarFuncionario.add(novoFuncionario);
        }
        
        return listarFuncionario;
    }
    
    
    
    
    
    public void atualizar(Funcionario novoFuncionario){
        
        try {

            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(update);
            
            pstmt.setString(1, novoFuncionario.getNome());
            pstmt.setString(2, novoFuncionario.getEndereco());
            pstmt.setString(3, novoFuncionario.getRg());
            pstmt.setString(4, novoFuncionario.getCpf());
            pstmt.setString(5, novoFuncionario.getTelefone());
            pstmt.setString(6, novoFuncionario.getEmail());
            pstmt.setString(7, novoFuncionario.getCidade());
            pstmt.setString(8, novoFuncionario.getFuncao());
            pstmt.setInt(9, novoFuncionario.getId_funcionario());
            pstmt.executeUpdate();
        
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    
    
    
    
    public void excluir(Funcionario excluirFuncionario){
        
        try {
            
            Connection conexao = DB.getConexao();
            
            PreparedStatement pstmt = (PreparedStatement) conexao.prepareStatement(delete);
            
            pstmt.setInt(1, excluirFuncionario.getId_funcionario());
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

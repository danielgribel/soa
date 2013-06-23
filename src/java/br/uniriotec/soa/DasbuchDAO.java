/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.uniriotec.soa;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author afonso
 */
public class DasbuchDAO {
    public static String dbUrl = "jdbc:postgresql://localhost:5432/dasbuch";
    public static Connection conn = null;
    
    @SuppressWarnings("UseSpecificCatch")
    private static void abrirConexao(){
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            conn = DriverManager.getConnection(dbUrl, "postgres", "beta!@#");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public List<String> consultarCPF(String nome){
        
        String sql = "select * from cliente";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<String> resultado = new ArrayList<String>();
        
        try {
            abrirConexao();
            stmt = conn.prepareStatement(sql);
            //stmt.setString(1, nome);
            rs = stmt.executeQuery();
            
            while (rs.next()){
                String temp = rs.getString("cpf");
                resultado.add(temp);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
            return resultado;
    }
}

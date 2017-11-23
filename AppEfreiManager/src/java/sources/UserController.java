/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sources;

import controller.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC-Acta
 */
public class UserController {
    public User getUser(String login, String mdp){
        try {
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/BASESTAG","adm","adm");
            Statement stmt = c.createStatement();
            PreparedStatement pstmt = c.prepareStatement("SELECT * from tuteur where login = ? and mdp= ?");
            pstmt.setString(1, login);
            pstmt.setString(2,mdp);
            ResultSet rs = pstmt.executeQuery();
            User user = new User();
            if(rs.next()){
                user.setLogin(rs.getString("login"));
                user.setMdp(rs.getString("mdp"));
                user.setNom(rs.getString("nom"));
                user.setNom(rs.getString("prenom"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
            
         return null;   
    }
}

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

/**
 *
 * @author PC-Acta
 */
public class UserController {
    public User getUser(String login, String mdp) throws SQLException{
        
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/BASESTAG","adm","adm");
            Statement stmt = c.createStatement();
            PreparedStatement pstmt = c.prepareStatement("SELECT login,mdp from tuteur where login = ? and mdp= ?");
            pstmt.setString(1, login);
            pstmt.setString(2,mdp);
            ResultSet rs = pstmt.executeQuery();
            User user = new User();
            if(rs.next()){
                user.setLogin(rs.getString("login"));
                user.setMdp(rs.getString("mdp"));
            }
            return user;
            
    }
}

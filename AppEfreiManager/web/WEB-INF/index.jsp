<%-- 
    Document   : index
    Created on : 16 nov. 2017, 15:17:41
    Author     : PC-Acta
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AppEfreiManager</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Bienvenue</h1>
         <form action='controller.jsp' method='POST'>
            Login :<input name="login" type='text'/>
            <br>
            Mot de passe :<input name="mdp" type='password'/>
            <br>
            <input type='submit' value='ok'/>
        </form>
        
        
        
            Connection c = DriverManager.getConnection("jdbc:derby://localhost:1527/BASESTAG","adm","adm");
            Statement stmt = c.createStatement();
            stmt.executeUpdate("DROP TABLE IF IDENTIFIANTS");
            stmt.executeUpdate("CREATE TABLE tuteur (id,nom VARCHAR(32), PRENOM(32) ,login VARCHAR(32), mdp VARCHAR(32))");
            stmt.executeUpdate("INSERT INTO IDENTIFIANTS (LOGIN, MDP) VALUES ('admin', 'admin')");
            
            ResultSet rs = stmt.executeQuery("SELECT * from IDENTIFIANTS");
            rs.next();
            out.print(rs.getString(1));
            out.print(rs.getString(2));
    </body>
</html>

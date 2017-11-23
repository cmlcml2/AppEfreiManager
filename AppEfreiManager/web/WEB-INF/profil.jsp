<%-- 
    Document   : profil
    Created on : 17 nov. 2017, 16:10:25
    Author     : lauden
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

        <title>Profile</title>
    </head>
    <body>
 
        <nav class="navbar   navbar-light">
            <a class="navbar-brand" href="#">EfreiManager</a>
            <div class="navbar" id="navbarNav">
                   
                <p> ${user.getNom()}</p>
                
                <p> ${user.getPrenom()} </p>
                
                <form class="form-inline my-2 my-lg-0" action='Servlet' method='POST'>
                    <input type="hidden" name="actionDeconnexion">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="deconnexion">Deconnexion</button>
                  </form>
            </div>
          </nav>
        
    </body>
</html>

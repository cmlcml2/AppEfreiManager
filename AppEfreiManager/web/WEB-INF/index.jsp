<%-- 
    Document   : index
    Created on : 16 nov. 2017, 15:17:41
    Author     : PC-Acta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>AppEfreiManager</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="WEB-INF/style.css">
        
    </head>
    <body>
       
        <h1>Bienvenue</h1>
        <c:out value="${status}" />
        <div>
            <form  action='Servlet' method='POST'>
              <div class="form-row align-items-center">
                <div class="col-auto">
                  <input type="text" class="form-control mb-2 mb-sm-0" id="inlineFormInput" placeholder="login" name="login">
                </div>
                <div class="col-auto">
                  <div class="input-group mb-2 mb-sm-0">
                    <input type="password" class="form-control" id="inlineFormInputGroup" placeholder="password" name="mdp">
                  </div>
                </div>
                <div class="col-auto">
                    <input type="hidden" name="actionlogin">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </div>
            </form>
        </div>
    </body>
</html>

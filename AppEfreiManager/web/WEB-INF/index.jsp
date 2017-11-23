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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
        <link rel="stylesheet" type="text/css" href="WEB-INF/style.css">
        
    </head>
    <body>
       
        <div class="nav-wrapper cyan darken-2">
          <a href="#" class="brand-logo center">EfreiManager</a>
        </div>
      </nav>   
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
